# Day 17: Password Auditing – Testing the Lock on the Door

## Task 1 – Install Hydra
`pkg install hydra -y`

## Task 2 – Create a Test Wordlist
`echo "password123" > pass.txt`
`echo "admin" >> pass.txt`
`echo "imperial2026" >> pass.txt`

## Task 3 – Ensure SSH is Running
`sshd`

## Task 4 – Run Hydra Against Your Own SSH
`hydra -l $(whoami) -P pass.txt localhost -s 8022 ssh`

## Task 5 – Change Your Password to a Strong One
`passwd`

## Task 6 – Run Hydra Again – It Should Fail
`hydra -l $(whoami) -P pass.txt localhost -s 8022 ssh`

## Screenshot Required
Show the Hydra output where it finds your old password (or fails after changing).

## Absolute Truth
A weak password is an open door. Strong passwords are the first line of defense.
