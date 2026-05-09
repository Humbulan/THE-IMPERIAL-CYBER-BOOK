# Day 12: The Language of Data – JSON

## Task 1 – Understand JSON
JSON (JavaScript Object Notation) structures data as key-value pairs.

## Task 2 – Update Your Flask App
Modify `web_node/app.py`:

```python
from flask import Flask, jsonify
app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Imperial Gateway</h1>"

@app.route("/api/status")
def status():
    data = {
        "system": "Imperial Node 01",
        "active": True,
        "uptime": "1 day"
    }
    return jsonify(data)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

## Task 3 – Run and Test
`python app.py`
Then visit `localhost:5000/api/status`

## Screenshot Required
Show the JSON output in your browser.

## Absolute Truth
JSON is the universal language of APIs – master it to talk to any service.
