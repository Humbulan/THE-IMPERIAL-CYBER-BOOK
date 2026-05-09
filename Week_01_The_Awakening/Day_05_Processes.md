# Day 5: Processes – What Is Running on Your Node

## Commands to Learn
- `ps aux` – show all running processes
- `ps aux | grep termux` – filter for specific process
- `kill PID` – stop a process by its ID

## Task 1 – View All Processes
`ps aux`

## Task 2 – Run a Background Process
`sleep 100 &`

## Task 3 – Find Its PID
`ps aux | grep sleep`

## Task 4 – Kill It
`kill [PID]` (replace [PID] with the actual number)

## Task 5 – Verify It Is Gone
`ps aux | grep sleep`

## Screenshot Required
Show the process before and after killing it

## Absolute Truth
A good operator controls what runs on their machine.
