# HDMAX/HelicMax Drone Cam
This repo contains http streamer service and reverse engineering files for helicmax/hdmax drone cameras.

## Folder Structure
### gostream
Streamer for drone cam. After you connected to the drone cam with wifi, run
`go run stream.go` and then go to [http://127.0.0.1:8080/stream](http://127.0.0.1:8080/stream). This is the folder that you're interested in if you just want to stream video from the drone camera.

### apk

**HDMAX.apk**: Original apk file.

**HDMAX-mod-aligned...apk**: Modified apk with cam ip defined as `192.168.0.3`

### pcap
Pcap files collected with wireshark.

### py
Sketchy python scripts used to MITM and debugging.