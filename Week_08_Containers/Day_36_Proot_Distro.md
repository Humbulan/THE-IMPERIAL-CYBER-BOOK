# Day 36: Lightweight Containers (proot-distro)

## Objective
Run a different Linux distribution inside Termux without root.

## Task 1 – Install proot-distro
`pkg install proot-distro -y`

## Task 2 – Install Ubuntu
`proot-distro install ubuntu`

## Task 3 – Login to Ubuntu
`proot-distro login ubuntu`

## Task 4 – Inside Ubuntu, run a command
`uname -a`
`exit` to leave.

## Screenshot Required
Show the login and `uname -a` output from within the container.

## Absolute Truth
Containers isolate environments without hardware overhead.
