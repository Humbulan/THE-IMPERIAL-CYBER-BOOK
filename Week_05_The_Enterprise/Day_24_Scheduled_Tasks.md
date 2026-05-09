# Day 24: Scheduled Tasks – Automating with `watch`

## Objective
Run a script periodically to log market prices every minute.

## Task 1 – Create logger script
`nano minute_logger.py`

## Task 2 – Write code

```python
import datetime, random, os

def log():
    ts = datetime.datetime.now().strftime("