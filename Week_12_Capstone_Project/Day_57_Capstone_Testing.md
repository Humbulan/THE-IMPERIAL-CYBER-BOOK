# Day 57: Capstone – Testing

## Objective
Write simple unit tests for your data layer.

## Task 1 – Install pytest
`pip install pytest`

## Task 2 – Create `test_data_layer.py`

```python
import data_layer, tempfile, os

def test_insert_and_fetch():
    conn = data_layer.init_db()
    data_layer.insert_rate(conn, 18.5)
    rows = data_layer.get_recent(conn, 1)
    assert rows[0][1] == 18.5
```

## Task 3 – Run tests
`pytest test_data_layer.py -v`

## Screenshot Required
Show the test results (green).
