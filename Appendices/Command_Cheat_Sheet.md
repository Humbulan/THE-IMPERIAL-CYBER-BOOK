# Imperial Command Cheat Sheet

## Navigation
| Command | Action |
|---------|--------|
| `pwd` | Print working directory |
| `ls` | List files |
| `ls -la` | List all files with permissions |
| `cd folder` | Change directory |
| `cd ..` | Go up one level |

## File Operations
| Command | Action |
|---------|--------|
| `cat file` | Display file |
| `echo "text" > file` | Write to file |
| `echo "text" >> file` | Append to file |
| `cp src dest` | Copy file |
| `mv src dest` | Move/rename |
| `rm file` | Delete file |
| `mkdir folder` | Create folder |

## Permissions
| Command | Action |
|---------|--------|
| `chmod 755 file` | Make executable |
| `chmod +x file` | Add execute |
| `ls -l` | View permissions |

## Processes
| Command | Action |
|---------|--------|
| `ps aux` | List processes |
| `ps aux | grep name` | Find process |
| `kill PID` | Stop process |
| `pkill name` | Stop by name |

## Networking
| Command | Action |
|---------|--------|
| `ifconfig` | Show IPs |
| `nmap localhost` | Scan ports |
| `sshd` | Start SSH |
| `ssh user@ip -p 8022` | Remote login |
| `tcpdump -i lo -A` | Capture packets |

## Python & Flask
| Command | Action |
|---------|--------|
| `python --version` | Check version |
| `pip install package` | Install library |
| `python script.py` | Run script |

## Shortcuts
| Key | Action |
|-----|--------|
| `Ctrl+C` | Stop command |
| `Ctrl+Z` | Suspend |
| `Tab` | Autocomplete |
| `Up Arrow` | Previous command |
