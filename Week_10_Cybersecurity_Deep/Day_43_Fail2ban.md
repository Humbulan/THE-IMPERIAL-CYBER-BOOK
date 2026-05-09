# Day 43: Fail2ban – Automatic IP Blocking

## Objective
Install fail2ban to block IPs that fail SSH login too many times.

## Task 1 – Install fail2ban on VPS
`sudo apt install fail2ban -y`

## Task 2 – Configure for custom SSH port
`sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local`
`sudo nano /etc/fail2ban/jail.local`
Find `[sshd]` and set `port = 2222`, `enabled = true`

## Task 3 – Restart fail2ban
`sudo systemctl restart fail2ban`

## Task 4 – Check status
`sudo fail2ban-client status sshd`

## Screenshot Required
Show the fail2ban status with "Currently banned: 0".

## Absolute Truth
Fail2ban stops dictionary attacks automatically.
