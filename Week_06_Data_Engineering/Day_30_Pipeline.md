# Day 30: Complete Data Pipeline

## Objective
Combine API fetching, database storage, and alerting into one script.

## Task 1 – Create pipeline script
`nano pipeline.py`

## Task 2 – Write code

```python
import requests, sqlite3, datetime, subprocess

def fetch_price():
    resp = requests.get("https://open.er-api.com/v6/latest/USD")
    return resp.json()["rates"]["ZAR"]

def store_price(price):
    conn = sqlite3.connect("market.db")
    c = conn.cursor()
    c.execute("CREATE TABLE IF NOT EXISTS prices (ts TEXT, price REAL)")
    ts = datetime.datetime.now().isoformat()
    c.execute("INSERT INTO prices VALUES (?, ?)", (ts, price))
    conn.commit()
    conn.close()

def check_alert(price, threshold=19.0):
    if price > threshold:
        subprocess.run(["termux-notification", "--title", "ZAR Alert", f"--content", f"USD/ZAR is {price}"])
    else:
        print(f"Price {price} is below threshold {threshold}")

if __name__ == "__main__":
    price = fetch_price()
    store_price(price)
    check_alert(price)
    print(f"Logged price {price} at {datetime.datetime.now()}")
```

## Task 3 – Run
`python pipeline.py`

## Screenshot Required
Show the output and, if threshold crossed, the notification.

## Absolute Truth
A pipeline automates the entire intelligence cycle.
