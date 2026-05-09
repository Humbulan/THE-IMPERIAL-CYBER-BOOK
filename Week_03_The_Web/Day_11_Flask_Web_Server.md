# Day 11: The Imperial Web Server (Flask)

## Task 1 – Install Flask
`pip install flask`

## Task 2 – Create Project Folder
`mkdir web_node && cd web_node`

## Task 3 – Create the Server File
`nano app.py`

## Task 4 – Write This Code

```python
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Imperial Gateway Active</h1><p>Welcome to the Sovereign Digital Frontier.</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
```

## Task 5 – Save and Exit
Ctrl+O, Enter, Ctrl+X

## Task 6 – Run the Server
`python app.py`

## Task 7 – Test in Browser
Open Chrome and visit `localhost:5000`

## Screenshot Required
Show the webpage in your browser.

## Absolute Truth
A web server turns your phone into a global broadcasting station.
