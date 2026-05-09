# Day 47: Centralized Logging – syslog Forwarding

## Objective
Send logs from your phone to your VPS (or vice versa).

## Task 1 – On VPS, enable UDP syslog reception
`sudo nano /etc/rsyslog.conf`
Uncomment `module(load="imudp")` and `input(type="imudp" port="514")`
`sudo systemctl restart rsyslog`

## Task 2 – On Termux, install logger and send a test
`pkg install termux-services`
`logger -n vps_ip -P 514 "Test log from Imperial Node"`

## Task 3 – On VPS, check /var/log/syslog for the message
`sudo tail /var/log/syslog | grep "Imperial"`

## Screenshot Required
Show the received log message on the VPS.

## Absolute Truth
Centralized logging is crucial for incident response.
