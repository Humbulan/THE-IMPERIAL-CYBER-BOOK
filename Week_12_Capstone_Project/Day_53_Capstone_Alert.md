# Day 53: Capstone – Alerting Module

## Objective
Add threshold alerting and termux-notification integration.

## Task 1 – Create `alert.py`

```python
import subprocess, sqlite3

def check_threshold(conn, threshold=19.0):
    c = conn.cursor()
    c.execute("SELECT rate FROM rates ORDER BY ts DESC LIMIT 1")
    latest = c.fetchone()[0]
    if latest > threshold:
        subprocess.run(["termux-notification", "--title", "Capstone Alert", "--content", f"Rate {latest} exceeds {threshold}"])
        print("Alert sent")
    else:
        print("Within threshold")
```

## Task 2 – Integrate into main loop

## Screenshot Required
Show the notification (or terminal output if not on phone).
