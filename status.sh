#!/bin/bash
printf "%.0s*" {1..32}
echo
echo "number of connected users : " $(($(w | wc -l)-2))
printf "%.0s=" {1..24}
echo
printf "%-10s %s\n" "user" "login time"
printf "%.0s-" {1..24}
echo
w | awk 'NR>2 {printf "%-10s %s\n", $1, $4}'
printf "%.0s=" {1..24}
echo
echo
echo "currently running processes (node, npm)"
printf "%.0s=" {1..24}
echo
printf "%-10s %s\n" "user" "process"
printf "%.0s-" {1..24}
echo
ps -ef | awk '{printf "%-10s %s\n", $1, $8}' | grep 'node\|npm'
printf "%.0s=" {1..24}
echo
