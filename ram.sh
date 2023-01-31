#!/bin/bash
x=1
free  > ram.dat
while [ $x -le 2160 ]
do
  free  | grep "Mem" >> ram.dat
  x=$(( $x + 1 ))
  sleep 10s
done
