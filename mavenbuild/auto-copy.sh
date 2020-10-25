#!/bin/bash

FROM='/root/Pictionarizer/pictionarizerapi/target/*.war'
TO='/tmp/build'

mkdir $TO

while true; do
   cp -rp $FROM $TO
   sleep 3
done
