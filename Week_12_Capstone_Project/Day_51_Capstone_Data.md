# Day 51: Capstone – Data Module

## Objective
Implement the data fetching and database storage functions.

## Task 1 – Create `data_layer.py`

```python
import sqlite3, requests, datetime

def fetch_usd_zar():
    resp = requests.get("https://open.er-api.com/v6/latest/USD")
    return resp.json()["rates"]["ZAR"]

def init_db():
    conn = sqlite3.connect("ops.db")
    c = conn.cursor()
    c.execute("CREATE TABLE IF NOT EXISTS rates (ts TEXT, rate REAL)")
    conn.commit()
    return conn

def insert_rate(conn, rate):
    c = conn.cursor()
    ts = datetime.datetime.now().isoformat()
    c.execute("INSERT INTO rates VALUES (?, ?)", (ts, rate))
    conn.commit()

def get_recent(conn, limit=10):
    c = conn.cursor()
    return c.execute("SELECT * FROM rates ORDER BY ts DESC LIMIT ?", (limit,)).fetchall()
```

## Task 2 – Test the module
`python -c "import data_layer; print(data_layer.fetch_usd_zar())"`

## Screenshot Required
Show the test output.
