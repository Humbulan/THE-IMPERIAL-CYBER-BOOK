# Day 42: SSH Hardening – Change Port on VPS

## Objective
Improve security by moving SSH to a non-standard port.

## Task 1 – On VPS, edit SSH config
`sudo nano /etc/ssh/sshd_config`
Change `#Port 22` to `Port 2222`

## Task 2 – Allow new port in firewall
`sudo ufw allow 2222/tcp`

## Task 3 – Restart SSH
`sudo systemctl restart sshd`

## Task 4 – Test new connection (from another terminal)
`ssh user@vps_ip -p 2222`

## Screenshot Required
Show successful login on the new port.

## Absolute Truth
Changing default ports reduces automated attacks.
