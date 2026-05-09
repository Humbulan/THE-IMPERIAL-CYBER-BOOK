# Day 15: The Master Gateway – Complete Integration

## Task 1 – Create the Master Gateway Script
`nano master_gateway.py`

## Task 2 – Write This Code

```python
import subprocess
import requests
from flask import Flask, render_template_string

app = Flask(__name__)

def get_intel():
    try:
        return subprocess.check_output(["termux-battery-status"]).decode()
    except:
        return "Battery data unavailable"

def get_market():
    try:
        url = "https://open.er-api.com/v6/latest/USD"
        data = requests.get(url).json()
        return f"R{data[rates][ZAR]}"
    except:
        return "Market Offline"

@app.route("/")
def dashboard():
    intel = get_intel()
    market = get_market()
    html = f"""
    <body style="background:#000; color:#0f0; font-family:monospace; padding:30px;">
        <h1 style="border-bottom:2px solid #0f0;">IMPERIAL MASTER GATEWAY v1.0</h1>
        <p><b>Global Intel:</b> USD/ZAR is at {market}</p>
        <hr>
        <h3>SYSTEM LOGS:</h3>
        <pre style="background:#111; padding:10px;">{intel}</pre>
        <footer style="margin-top:50px;">Humbu Wandeme Trading Enterprise Security Protocol Active</footer>
    </body>
    """
    return html

if __name__ == "__main__":
    print("--- INITIATING MASTER GATEWAY ---")
    subprocess.call(["./sanitizer.sh"])
    app.run(host="0.0.0.0", port=5000)
```

## Task 3 – Save and Exit
Ctrl+O, Enter, Ctrl+X

## Task 4 – Run the Master Gateway
`python master_gateway.py`

## Task 5 – Test in Browser
Visit `localhost:5000` – you should see the dashboard with market data and system logs.

## Screenshot Required
Show your Master Gateway running in the browser.

## Absolute Truth
The Master Gateway unifies security, intelligence, and global data into one command center.
