# Day 54: Capstone – Scheduler

## Objective
Run the fetch-check cycle every 5 minutes using `watch` or cron.

## Task 1 – Create main script `ops_loop.py`

```python
import data_layer, alert, time

def main_cycle():
    conn = data_layer.init_db()
    rate = data_layer.fetch_usd_zar()
    data_layer.insert_rate(conn, rate)
    alert.check_threshold(conn)
    conn.close()
    print(f"Cycle completed at {time.ctime()}")

if __name__ == "__main__":
    while True:
        main_cycle()
        time.sleep(300)  # 5 minutes
```

## Task 2 – Run in background with `nohup`
`nohup python ops_loop.py &`

## Screenshot Required
Show the output of `tail -f nohup.out` after a couple of cycles.
