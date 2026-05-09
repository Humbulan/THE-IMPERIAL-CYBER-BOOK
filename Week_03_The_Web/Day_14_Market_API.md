# Day 14: Connecting to the World – Market API

## Task 1 – Install Requests Library
`pip install requests`

## Task 2 – Create a Market Test Script
`nano fetch_market.py`

## Task 3 – Write This Code

```python
import requests

def get_market_data():
    url = "https://open.er-api.com/v6/latest/USD"
    response = requests.get(url)
    data = response.json()
    zar_rate = data["rates"]["ZAR"]
    print(f"--- GLOBAL MARKET INTEL ---")
    print(f"Current USD to ZAR: R{zar_rate}")
    return zar_rate

if __name__ == "__main__":
    get_market_data()
```

## Task 4 – Save and Exit
Ctrl+O, Enter, Ctrl+X

## Task 5 – Run the Script
`python fetch_market.py`

## Screenshot Required
Show the USD/ZAR exchange rate output.

## Absolute Truth
External APIs bring the world into your Imperial Stack.
