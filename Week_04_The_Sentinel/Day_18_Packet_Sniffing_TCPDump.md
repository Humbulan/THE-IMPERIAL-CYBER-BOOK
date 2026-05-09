# Day 18: Invisible Streams – Packet Sniffing with TCPDump

## Task 1 – Install TCPDump
`pkg install tcpdump -y`

## Task 2 – Start Listening on Local Loopback
`tcpdump -i lo -A`

## Task 3 – In a Second Termux Session, Generate Traffic
Visit your dashboard: `curl localhost:5000` or open browser to `localhost:5000`

## Task 4 – Observe the Packets
Look for lines containing `GET / HTTP/1.1` – these are your browser talking to your server.

## Task 5 – Stop TCPDump
Press `Ctrl+C`

## Screenshot Required
Show the TCPDump output with `GET` request visible.

## Absolute Truth
The packets on the wire do not lie. Sniffing reveals exactly what leaves your node.
