# Day 34: Termux Services – cron-like Scheduling

## Objective
Use `termux-job-scheduler` to run scripts periodically.

## Task 1 – Install termux-services
`pkg install termux-services -y`

## Task 2 – Create a job script
`nano ~/.shortcuts/daily_report.sh`

## Task 3 – Write code

```bash
#!/bin/bash
echo "$(date): Daily report" >> ~/cron.log
```
`chmod 755 ~/.shortcuts/daily_report.sh`

## Task 4 – Schedule every minute for testing
`termux-job-scheduler -s daily_report -p 60`

## Task 5 – Monitor output
`tail -f ~/cron.log` (wait for 2 minutes)

Cancel with Ctrl+C, then remove job: `termux-job-scheduler -c daily_report`

## Screenshot Required
Show the cron.log entries.

## Absolute Truth
Scheduling is essential for autonomous operations.
