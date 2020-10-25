#!/bin/bash

FROM='/root/Pictionarizer/pictionarizer-ui/build'
TO='/tmp'

while true; do
   cp -rp $FROM $TO
   sleep 3
done
