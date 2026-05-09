# Day 8: The Sanitizer – Bash Script for System Hygiene

## Task 1 – Create the Script
`nano sanitizer.sh`

## Task 2 – Write This Code

```bash
#!/bin/bash
echo "=== IMPERIAL SANITIZER ==="
echo "Cleaning logs..."
rm -f ~/.bash_history
echo "Cache cleared."
echo "Scanning ports:"
netstat -tuln 2>/dev/null || echo "(netstat requires permission)"
echo "Sanitizer complete."
```

## Task 3 – Save and Exit
Ctrl+O, Enter, Ctrl+X

## Task 4 – Make Executable
`chmod 755 sanitizer.sh`

## Task 5 – Run It
`./sanitizer.sh`

## Screenshot Required
Show the sanitizer output

## Absolute Truth
A clean system is a secure system.
