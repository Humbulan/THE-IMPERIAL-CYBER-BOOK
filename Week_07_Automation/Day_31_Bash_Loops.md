# Day 31: Bash Loops – Automating Repetitive Tasks

## Objective
Write a bash script that loops over files and performs actions.

## Task 1 – Create script
`nano loop_demo.sh`

## Task 2 – Write code

```bash
#!/bin/bash
echo "=== Imperial Batch Processor ==="
for file in *.txt; do
    if [[ -f "$file" ]]; then
        echo "Processing $file"
        wc -l "$file"
    fi
done
```

## Task 3 – Make executable and run
`chmod 755 loop_demo.sh`
`./loop_demo.sh`

## Screenshot Required
Show the script processing all .txt files in the current directory.

## Absolute Truth
Bash loops turn you into a power user.
