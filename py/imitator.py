import socket
import sys
import time
import asyncio

queue1 = []
queue2 = []

caddr = None

port = None

async def recvfrom(sock):
    global caddr
    global queue1

    try:
        data, addr = sock.recvfrom(1024)
    except socket.timeout:
        # print("timeout")
        return

    caddr = addr

    if data:
        # print(f"Data from app {data}")
        queue1.append(data)

async def recv(sock):
    global queue2

    try:
        data = sock.recv(1024)
    except socket.timeout:
        # print("timeout2")
        return

    if data:
        # print(f"Data from cam {data}")
        queue2.append(data)

async def sendto(sock, data, addr):
    sock.sendto(data, addr)
    
async def async_listen_app(sock):
    print("listenapp")
    while True:
        await recvfrom(sock)
        await asyncio.sleep(0)

async def async_send_to_app(sock):
    global caddr
    global queue2

    print("sendtoapp")
    while True:
        if len(queue2) > 0:
            await sendto(sock, queue2.pop(), caddr)
        else:
            await asyncio.sleep(0)

async def async_listen_cam(sock):
    print("listencam")
    while True:
        await recv(sock)
        await asyncio.sleep(0)

async def async_send_to_cam(sock):
    print("sendtocam")

    while True:
        if len(queue1) > 0:
            await sendto(sock, queue1.pop(), ('192.168.0.1', port))
        else:
            await asyncio.sleep(0)

async def main():
    global port

    csock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    csock.settimeout(0.1)
    
    asock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    asock.settimeout(0.1)
    asock.bind(('192.168.0.3', port))

    await asyncio.gather(async_listen_app(asock), async_send_to_cam(csock), async_listen_cam(csock), async_send_to_app(asock))

    print("here")

if __name__ == "__main__":
    port = int(sys.argv[1])


    asyncio.run(main())
