#!/bin/bash
echo "Your ip address is   : $(wget -qO- https://ipecho.net/plain)"
echo "Your architecture is : $(uname -m)"
echo "You are using        : $(uname -o)"
printf -v lines "$(date +%Y-%m-%d) at $(date +%H:%M:%S) by $(wget -qO- https://ipecho.net/plain ; echo)> User: $(whoami)"
echo "$lines" >> checked.dmp
sort -n checked.dmp --reverse --output=checked.dmp
echo "Checked time         : $(date +%Y-%m-%d) at $(date +%H:%M:%S)"
echo ""
echo "=============== System log =================="
cat checked.dmp
echo "============================================="
killall -9 bash
