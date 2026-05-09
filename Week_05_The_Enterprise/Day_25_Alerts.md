# Day 25: Imperial Alerts – Termux Notifications

## Objective
Send a push notification when a price threshold is crossed.

## Task 1 – Install Termux API
`pkg install termux-api -y`

## Task 2 – Create alert script
`nano price_alert.py`

## Task 3 – Write code

```python
import subprocess, random

def send_alert(msg):
    subprocess.run(["termux-notification", "--title", "Imperial Alert", "--content", msg])

price = random.uniform(400, 600)
threshold = 520
if price > threshold:
    send_alert(f"Price ${price:.2f} exceeds threshold ${threshold}")
else:
    print(f"Price ${price:.2f} is safe.")
```

## Task 4 – Run
`python price_alert.py`

## Screenshot Required
Show the notification on your phone screen (or terminal output if notification fails).

## Absolute Truth
Alerts turn data into action.
