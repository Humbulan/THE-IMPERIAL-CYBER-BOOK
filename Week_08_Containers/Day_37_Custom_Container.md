# Day 37: Custom Container – Alpine Linux

## Objective
Install a lightweight Alpine container.

## Task 1 – Install Alpine
`proot-distro install alpine`

## Task 2 – Login and install packages
`proot-distro login alpine`
`apk add curl`
`curl ifconfig.me`
`exit`

## Task 3 – Create an alias for quick login
`echo "alias alpine=proot-distro