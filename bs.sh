#!/bin/bash

echo "Your ip address is   : $(hostname -I)"
echo "Your architecture is : $(uname -m)"
echo "You are using        : $(uname -o)"
printf -v lines "$(date +%Y-%m-%d) at $(date +%H:%M:%S) by $(hostname -I)> User: $(whoami)"
echo "$lines" >> checked.dmp
sort -n checked.dmp --reverse --output=checked.dmp
echo "Checked time         : $(date +%Y-%m-%d) at $(date +%H:%M:%S)"
echo ""
echo "=============== System log =================="
cat checked.dmp
echo "============================================="

