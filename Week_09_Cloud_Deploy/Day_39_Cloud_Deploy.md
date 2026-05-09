# Day 39: Cloud Deployment – SSH to VPS

## Objective
Deploy your Master Gateway to a remote server (e.g., DigitalOcean, AWS EC2).

## Task 1 – Obtain a VPS (any cheap one) with Ubuntu
## Task 2 – Copy your script using scp
`scp -P 22 master_gateway.py user@your_vps_ip:~/`

## Task 3 – SSH into VPS, install dependencies
`ssh user@your_vps_ip`
`sudo apt update && sudo apt install python3-pip -y`
`pip3 install flask requests`

## Task 4 – Run the gateway on the VPS
`python3 master_gateway.py`

## Task 5 – Access from your browser: http://your_vps_ip:5000

## Screenshot Required
Show the browser accessing the gateway on your VPS.

## Absolute Truth
Cloud deployment makes your services available globally.
