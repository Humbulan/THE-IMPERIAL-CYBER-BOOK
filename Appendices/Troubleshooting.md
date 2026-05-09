# Imperial Troubleshooting Guide

## Common Problems and Solutions

### 1. "command not found"
**Solution:** `pkg install [package]`

### 2. "permission denied"
**Solution:** `chmod 755 filename`

### 3. Port already in use
**Solution:** Find and kill process using the port:
```
netstat -tuln | grep 5000
ps aux | grep python
kill [PID]
```

### 4. SSH connection refused
**Solution:** Start SSH server: `sshd`

### 5. Python ModuleNotFoundError
**Solution:** `pip install missing_module`

### 6. Git push fails (authentication)
**Solution (HTTPS with token):**
`git remote set-url origin https://USERNAME:TOKEN@github.com/Humbulan/THE-IMPERIAL-CYBER-BOOK.git`

### 7. Cannot see IP with ifconfig
**Solution:** `pkg install net-tools -y` or use `ip -4 addr`

### 8. Nmap scan takes too long
**Solution:** `nmap -p 22,5000,8022 localhost`
