# Day 21: Stock Tracker – First Enterprise Tool

## Objective
Build a script that fetches simulated stock prices and tracks portfolio value.

## Task 1 – Create the script
`nano stock_tracker.py`

## Task 2 – Write the code

```python
import random

def get_price(symbol):
    # Simulated price between 100 and 500
    return round(random.uniform(100, 500), 2)

def track_portfolio(holdings):
    total_value = 0
    print("=== IMPERIAL PORTFOLIO TRACKER ===")
    print(f"{"Symbol":<6} {"Shares":<8} {"Price":<10} {"Value":<12}")
    for sym, shares in holdings.items():
        price = get_price(sym)
        value = shares * price
        total_value += value
        print(f"{sym:<6} {shares:<8} ${price:<10.2f} ${value:<12.2f}")
    print(f"
Total Portfolio Value: ${total_value:.2f}")

if __name__ == "__main__":
    my_holdings = {"IMP": 10, "GOLD": 5, "LITH": 20}
    track_portfolio(my_holdings)
```

## Task 3 – Run it
`python stock_tracker.py`

## Screenshot Required
Show the output of the portfolio tracker.

## Absolute Truth
The Enterprise tracks every asset. Start with paper trading; never risk real money until audited.
