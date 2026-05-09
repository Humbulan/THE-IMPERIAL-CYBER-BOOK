# Day 38: Containerized Web Server

## Objective
Run a Python Flask server inside an Alpine container.

## Task 1 – Login to Alpine
`proot-distro login alpine`

## Task 2 – Install Python and Flask
`apk add python3 py3-pip`
`pip install flask`

## Task 3 – Create app.py inside container
`echo "from flask import Flask; app = Flask(__name__); @app.route(/); def home(): return Containerized