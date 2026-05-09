# Day 19: The Imperial Shield – Firewall Logic

## Task 1 – Understand the Blacklist Pattern
A software firewall blocks specific IP addresses from accessing your server.

## Task 2 – Add Blacklist Logic to Your Flask App
Edit `master_gateway.py` and add:

```python
from flask import request

BLACKLIST = ["192.168.1.50"]  # Example: replace with an IP to block

@app.route("/")
def dashboard():
    client_ip = request.remote_addr
    if client_ip in BLACKLIST:
        return "<h1>ACCESS DENIED</h1><p>Your IP is blacklisted.</p>", 403
    # ... rest of your dashboard code
```

## Task 3 – Test the Shield
Add your own IP address (find with `ifconfig`) to `BLACKLIST`, restart the server, and try to access `localhost:5000`.

## Task 4 – Remove Your IP to Restore Access
Delete your IP from `BLACKLIST` and restart.

## Screenshot Required
Show the **ACCESS DENIED** message when your IP is blacklisted.

## Absolute Truth
A firewall gives you the power to deny entry. Trust no one by default.
