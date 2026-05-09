# Day 23: Robust API Calls – Retry and Error Handling

## Objective
Enhance market data fetching with retry logic and graceful failure.

## Task 1 – Create script
`nano smart_fetch.py`

## Task 2 – Write code

```python
import requests
import time

def fetch_with_retry(url, retries=3, delay=2):
    for attempt in range(retries):
        try:
            resp = requests.get(url, timeout=5)
            resp.raise_for_status()
            return resp.json()
        except Exception as e:
            print(f"Attempt {attempt+1} failed: {e}")
            if attempt < retries-1:
                time.sleep(delay)
            else:
                return None
    return None

if __name__ == "__main__":
    data = fetch_with_retry("https://open.er-api.com/v6/latest/USD")
    if data:
        print(f"USD/ZAR: R{data["rates"]["ZAR"]}")
    else:
        print("Market data unavailable.")
```

## Task 3 – Run
`python smart_fetch.py`

## Screenshot Required
Show the output with successful fetch or retry messages.

## Absolute Truth
Resilient code survives network flakiness.
