# Day 22: Data Logger – Tracking Metrics Over Time

## Objective
Create a script that appends market prices to a CSV file for historical tracking.

## Task 1 – Create the logger script
`nano data_logger.py`

## Task 2 – Write the code

```python
import datetime
import random
import os

def log_data(price, filename="market_log.csv"):
    timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    if not os.path.exists(filename):
        with open(filename, "w") as f:
            f.write("timestamp,price\n")
    with open(filename, "a") as f:
        f.write(f"{timestamp},{price}\n")
    print(f"Logged: {timestamp} -> ${price}")

if __name__ == "__main__":
    current_price = round(random.uniform(100, 500), 2)
    log_data(current_price)
    print("\nLast 5 entries:")
    os.system("tail -5 market_log.csv")

