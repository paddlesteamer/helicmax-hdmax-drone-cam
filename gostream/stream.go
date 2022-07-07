package main

import (
	"bytes"
	"context"
	"encoding/binary"
	"fmt"
	"image/jpeg"
	"math/rand"
	"net"
	"net/http"
	"time"
)

func generateBoundary() string {
	charset := "abcdefghijklmnopqrstuvwxyz0123456789"

	b := make([]byte, 30)
	for i := range b {
		b[i] = charset[rand.Intn(len(charset))]
	}

	return string(b)
}

func ping(ctx context.Context, c net.Conn) {
	for {
		select {
		case <-ctx.Done():
			return
		default:
			// send ping bytes
			c.Write([]byte{0x63, 0x63, 0x0a, 0x00, 0x00, 0x08, 0x00, 0x66, 0x80, 0x80, 0x00, 0x80, 0x00, 0x80, 0x90})
			time.Sleep(time.Millisecond * 100)
		}
	}
}

func getFrame(c net.Conn) ([]byte, error) {
	buffer := make([]byte, 1500)

	frame := bytes.Buffer{}
	for {
		n, err := c.Read(buffer)
		if err != nil {
			return nil, fmt.Errorf("Error reading from UDP: %v", err)
		}

		if n < 3 {
			fmt.Printf("Not a frame: size: %d\n", n)
			continue
		}

		if !bytes.Equal(buffer[0:3], []byte{0x63, 0x63, 0x03}) {
			fmt.Printf("Not a frame: %v\n", buffer[0:3])
			continue
		}

		chunk_length := binary.LittleEndian.Uint16(buffer[52:54])

		frame.Write(buffer[54 : chunk_length+54])

		chunk_no := int(buffer[48])
		total_chunks := int(buffer[50])

		if chunk_no == total_chunks {
			return frame.Bytes(), nil
		}
	}
}

func return500(w http.ResponseWriter, r *http.Request) {
	w.WriteHeader(500)
	w.Write([]byte("500 Internal Server Error"))
}

func handleStream(w http.ResponseWriter, r *http.Request) {
	addr := "192.168.0.1:40000"

	s, err := net.ResolveUDPAddr("udp", addr)
	if err != nil {
		fmt.Printf("Couldn't resolve address %s: %v", addr, err)
		return500(w, r)
		return
	}

	c, err := net.DialUDP("udp", nil, s)
	if err != nil {
		fmt.Printf("Unable to connect %s: %v", addr, err)
		return500(w, r)
		return
	}
	defer c.Close()

	// send magical bytes to wake the device up
	c.Write([]byte{0x63, 0x63, 0x01, 0x00, 0x00, 0x00, 0x00})

	ctx := r.Context()
	ctx, cancel := context.WithCancel(ctx)
	defer cancel()

	go ping(ctx, c)

	boundary := generateBoundary()

	w.Header().Add("Content-Type", "multipart/x-mixed-replace;boundary="+boundary)

	for {
		select {
		case <-ctx.Done():
			return
		default:
			// send frame bytes
			f, err := getFrame(c)
			if err != nil {
				fmt.Printf("Error getting frame: %v\n", err)
				return
			}

			_, err = jpeg.Decode(bytes.NewReader(f))
			if err != nil {
				fmt.Printf("Error decoding frame: %v\n", err)
				continue
			}

			w.Write([]byte("--" + boundary + "\r\n"))
			w.Write([]byte("Content-Type: image/jpeg\r\n"))
			w.Write([]byte("Content-Length: " + fmt.Sprintf("%d", len(f)) + "\r\n\r\n"))
			w.Write(f)
			w.Write([]byte("\r\n"))
		}
	}

}

func handleRoot(w http.ResponseWriter, r *http.Request) {
	return500(w, r)
}

func main() {
	http.HandleFunc("/", handleRoot)
	http.HandleFunc("/stream", handleStream)

	http.ListenAndServe("0.0.0.0:8080", nil)
}
