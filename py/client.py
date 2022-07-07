
import asyncio
import socket
import sys

addr = ('192.168.0.1', 40000)

current_frame_data = b''
current_frame_id = b''

async def recv(sock):
    global current_frame_id
    global current_frame_data

    data = sock.recv(1500)

    if not data or len(data) < 3:
        return

    # if data[0:3] == b'\x63\x63\x01':
    #     print(f"Initial message received from {str(data[7:22])}") 
    if data[0:3] == b'\x63\x63\x03':
        frame_id = data[8:9]

        if current_frame_id != frame_id:
            if len(current_frame_data) > 0:
                # f = open(f"frames/{current_frame_id.hex()}.jpeg", "wb")
                # f.write(current_frame_data)
                # f.close()

                sys.stdout.buffer.write(current_frame_data)
                sys.stdout.flush()

                current_frame_data = b''

            current_frame_id = frame_id

        current_frame_data += data[54:]


async def sendregular(sock):
    global addr
    
    regular_msg = b'\x63\x63\x0a\x00\x00\x08\x00\x66\x80\x80\x00\x80\x00\x80\x90'

    sock.sendto(regular_msg, addr)


async def receiver(sock):
    while True:
        await recv(sock)
        await asyncio.sleep(0)

async def sender(sock):
    global addr

    first_msg = b'\x63\x63\x01\x00\x00\x00\x00'

    sock.sendto(first_msg, addr)

    while True:
        await sendregular(sock)
        await asyncio.sleep(0)

async def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    await asyncio.gather(sender(sock), receiver(sock))

if __name__ == "__main__":
    asyncio.run(main())