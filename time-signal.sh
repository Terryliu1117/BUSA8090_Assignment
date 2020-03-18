#!/bin/bash
time=$(date +%I)
time_1=$(date +%M)
count=0
while test $count -lt $time; do
 echo -e "\a"
 sleep 1
 count=$[$count+1]
done

sleep 3

if test $time_1 -le 30 && test $time_1 -ge 15; then
 echo -e "\a"
elif test $time_1 -le 45 && test $time_1 -gt 30; then
 echo -e "\a"
 echo -e "\a"
elif test $time_1 -le 60 && test $time_1 -gt 45; then
 echo -e "\a"
 echo -e "\a"
 echo -e "\a"
fi
 



