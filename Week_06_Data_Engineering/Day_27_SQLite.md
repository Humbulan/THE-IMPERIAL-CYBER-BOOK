# Day 27: SQLite – Structured Data Storage

## Objective
Store market prices in a database instead of CSV.

## Task 1 – Install SQLite (already in Termux)
`pkg install sqlite -y`

## Task 2 – Create DB script
`nano db_logger.py`

## Task 3 – Write code

```python
import sqlite3, datetime, random

conn = sqlite3.connect("market.db")
c = conn.cursor()
c.execute("CREATE TABLE IF NOT EXISTS prices (ts TEXT, price REAL)")

ts = datetime.datetime.now().isoformat()
price = round(random.uniform(100, 500), 2)
c.execute("INSERT INTO prices VALUES (?, ?)", (ts, price))
conn.commit()

# Show last 5
for row in c.execute("SELECT * FROM prices ORDER BY ts DESC LIMIT 5"):
    print(row)
conn.close()
```

## Task 4 – Run multiple times
`python db_logger.py` (repeat 3 times)

## Screenshot Required
Show the inserted rows.

## Absolute Truth
Databases power every serious application.
