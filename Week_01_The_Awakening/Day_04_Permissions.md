# Day 4: Permissions – Who Can Access Your Files

## Commands to Learn
- `ls -l` – see permissions of files
- `chmod 755 file` – make a file executable

## Understanding Permissions
| Number | Meaning |
|--------|---------|
| 7 | read + write + execute |
| 5 | read + execute |
| 0 | no access |

## Task 1 – Create a Script
`echo "echo Imperial Active" > hello.sh`

## Task 2 – Check Permissions
`ls -l hello.sh`

## Task 3 – Make It Executable
`chmod 755 hello.sh`

## Task 4 – Run It
`./hello.sh`

## Screenshot Required
Show `ls -l hello.sh` and the output of `./hello.sh`

## Absolute Truth
Without execute permission, a script is just text.
