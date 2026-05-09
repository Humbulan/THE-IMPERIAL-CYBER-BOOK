# Day 28: SQL Queries – Analysis

## Objective
Run queries on your price database: average, max, min.

## Task 1 – Create query script
`nano query_db.py`

## Task 2 – Write code

```python
import sqlite3

conn = sqlite3.connect("market.db")
c = conn.cursor()

c.execute("SELECT AVG(price), MAX(price), MIN(price) FROM prices")
avg, mx, mn = c.fetchone()
print(f"Average: {avg:.2f}, Max: {mx:.2f}, Min: {mn:.2f}")

c.execute("SELECT ts, price FROM prices ORDER BY price DESC LIMIT 3")
print("\nTop 3 prices:")
for ts, p in c.fetchall():
    print(f"{ts}: ${p}")
conn.close()
```

## Task 3 – Run
`python query_db.py`

## Screenshot Required
Show the averages and top prices.

## Absolute Truth
Data without analysis is just noise.
