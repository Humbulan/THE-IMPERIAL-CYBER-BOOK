# Day 48: Health Dashboard – Web Monitor

## Objective
Build a Flask dashboard that shows system load and service status.

## Task 1 – Create a new Flask app
`nano health_dashboard.py`

## Task 2 – Write code

```python
from flask import Flask
import subprocess, os, datetime
app = Flask(__name__)

@app.route("/")
def health():
    load = os.getloadavg()
    disk = subprocess.getoutput("df -h /data")
    now = datetime.datetime.now()
    return f"<h1>Imperial Health</h1><p>{now}</p><p>Load: {load}</p><pre>{disk}</pre>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)
```

## Task 3 – Run and visit `localhost:5002`

## Screenshot Required
Show the health dashboard in your browser.

## Absolute Truth
A health dashboard is the first thing a director looks at.
