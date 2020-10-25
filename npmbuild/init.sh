#!/bin/bash

FROM='/root/Pictionarizer/pictionarizer-ui/build'
TO='/tmp'

mysql -uroot -pThisisCS50 -h mysql < /opt/init.sql

while true; do
   cp -rp $FROM $TO
   sleep 3
done
