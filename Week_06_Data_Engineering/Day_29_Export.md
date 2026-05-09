# Day 29: Data Interchange – Exporting from SQLite

## Objective
Export database tables to CSV and JSON formats.

## Task 1 – Create export script
`nano export_data.py`

## Task 2 – Write code

```python
import sqlite3, csv, json

conn = sqlite3.connect("market.db")
c = conn.cursor()

# Export to CSV
with open("export.csv", "w") as f:
    writer = csv.writer(f)
    writer.writerow(["timestamp", "price"])
    for row in c.execute("SELECT * FROM prices"):
        writer.writerow(row)

# Export to JSON
c.execute("SELECT * FROM prices")
rows = [{"timestamp": r[0], "price": r[1]} for r in c.fetchall()]
with open("export.json", "w") as f:
    json.dump(rows, f, indent=2)

print("Exported to export.csv and export.json")
conn.close()
```

## Task 3 – Run
`python export_data.py`
`head -5 export.csv`
`cat export.json | head -10`

## Screenshot Required
Show the first lines of both exported files.

## Absolute Truth
Interoperability makes your data usable anywhere.
