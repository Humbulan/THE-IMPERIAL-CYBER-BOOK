# Day 13: The Imperial Dashboard

## Task 1 – Add System Intelligence to Flask
Modify `web_node/app.py`:

```python
import subprocess
from flask import Flask, render_template_string
app = Flask(__name__)

def get_battery():
    try:
        return subprocess.check_output(["termux-battery-status"]).decode()
    except:
        return {health:unknown}

@app.route("/")
def dashboard():
    battery = get_battery()
    html = f"""
    <html>
        <body style="background:#111; color:#0f0; font-family:monospace; padding:20px;">
            <h1>IMPERIAL DASHBOARD v1.0</h1>
            <hr>
            <h2>System Status: ACTIVE</h2>
            <pre style="background:#222; padding:10px;">{battery}</pre>
            <p>Location: Imperial Node</p>
        </body>
    </html>
    """
    return html

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

## Task 2 – Run the Dashboard
`python app.py`

## Task 3 – Test in Browser
Visit `localhost:5000` – you should see a green-on-black dashboard showing battery data.

## Screenshot Required
Show your Imperial Dashboard in the browser.

## Absolute Truth
A dashboard turns raw data into actionable intelligence.
