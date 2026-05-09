# Day 35: Log Rotation – Prevent Disk Filling

## Objective
Automatically compress and archive old logs.

## Task 1 – Create rotation script
`nano rotate_logs.sh`

## Task 2 – Write code

```bash
#!/bin/bash
LOG_DIR="$HOME/logs"
mkdir -p "$LOG_DIR"
# Simulate log growth
echo "$(date) - System active" >> "$LOG_DIR/app.log"
# Rotate if over 10KB
if [[ $(stat -c "$LOG_DIR/app.log") -gt 10000 ]]; then
    mv "$LOG_DIR/app.log" "$LOG_DIR/app.log.$(date +