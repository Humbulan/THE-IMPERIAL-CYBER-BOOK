# Day 33: Bash Functions – Reusable Code

## Objective
Modularize your sanitizer with functions.

## Task 1 – Create script
`nano modular_sanitizer.sh`

## Task 2 – Write code

```bash
#!/bin/bash
clean_logs() {
    rm -f ~/.bash_history
    echo "Logs cleaned."
}

check_ports() {
    echo "Open ports:"
    netstat -tuln 2>/dev/null || echo "netstat unavailable"
}

main() {
    echo "=== Imperial Sanitizer ==="
    clean_logs
    check_ports
    echo "Done."
}

main
```

## Task 3 – Run
`chmod 755 modular_sanitizer.sh && ./modular_sanitizer.sh`

## Screenshot Required
Show the output.

## Absolute Truth
Functions make scripts readable and maintainable.
