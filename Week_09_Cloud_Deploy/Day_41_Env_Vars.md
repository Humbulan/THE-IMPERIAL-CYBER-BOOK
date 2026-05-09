# Day 41: Environment Variables – Secure Configuration

## Objective
Store sensitive information (API keys) outside your code.

## Task 1 – Create .env file
`echo "API_KEY=your_secret_key_here" > .env`
`echo "THRESHOLD=19.0" >> .env`

## Task 2 – Read .env in Python
`nano use_env.py`

## Task 3 – Write code

```python
import os

def load_env():
    with open(".env") as f:
        for line in f:
            if "=" in line:
                k, v = line.strip().split("=", 1)
                os.environ[k] = v

load_env()
api_key = os.environ.get("API_KEY")
print(f"API_KEY is {api_key} (length {len(api_key)})")
```

## Task 4 – Run
`python use_env.py`

## Screenshot Required
Show the output (mask the actual key if you want).

## Absolute Truth
Never hard-code secrets. Use environment variables.
