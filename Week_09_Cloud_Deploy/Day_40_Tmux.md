# Day 40: tmux – Keep Processes Running After Disconnect

## Objective
Run your VPS gateway inside a tmux session so it survives SSH logout.

## Task 1 – Install tmux on VPS
`sudo apt install tmux -y`

## Task 2 – Start a new tmux session
`tmux new -s imperial`

## Task 3 – Inside tmux, run your gateway
`python3 master_gateway.py`

## Task 4 – Detach from session: Ctrl+B, then D

## Task 5 – Logout of SSH, then log back in, reattach
`tmux attach -t imperial`

## Screenshot Required
Show the reattached session with the gateway running.

## Absolute Truth
tmux gives you persistent remote control.
