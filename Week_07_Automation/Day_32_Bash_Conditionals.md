# Day 32: Bash Conditionals – Decision Making

## Objective
Write a script that checks system health and decides actions.

## Task 1 – Create script
`nano health_check.sh`

## Task 2 – Write code

```bash
#!/bin/bash
FREE=$(df -h /data | tail -1 | awk "{print $5}" | sed "s/