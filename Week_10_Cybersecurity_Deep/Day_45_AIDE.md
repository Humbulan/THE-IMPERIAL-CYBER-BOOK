# Day 45: File Integrity Monitoring with AIDE

## Objective
Detect unauthorized changes to system binaries.

## Task 1 – Install AIDE
`sudo apt install aide -y`

## Task 2 – Initialize database
`sudo aideinit`
`sudo mv /var/lib/aide/aide.db.new /var/lib/aide/aide.db`

## Task 3 – Run a check
`sudo aide --check`

## Screenshot Required
Show the output indicating "No differences" or listing changes.

## Absolute Truth
Integrity monitoring alerts you to compromised binaries.
