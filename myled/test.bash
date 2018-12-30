#!/bin/bash

echo "Ltika"
for((i=1;i<50;i++));do

y=`echo "scale=4; ($i * 1) / 100" | bc`

x=`echo "scale=4; (50 - $i) / 100" | bc`

echo 1 > /dev/myled0
echo ON _Time "$y"sec

sleep "$y"

echo 0 > /dev/myled0
echo OFF_Time "$x"sec

sleep "$x"
done

sleep 1

echo "Thank you for watching!!"

exit 0;
