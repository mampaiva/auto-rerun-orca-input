#!/bin/bash

name_input=i1-w18-1-wb97xd3-freq
./ram.sh &

mkdir $name_input
mv $name_input.inp $name_input
cp auto-rerun-orca-input $name_input
cd $name_input
./auto-rerun-orca-input $name_input.inp
cp $name_input.out ..
cd ..

name_input=i1-w18-2-wb97xd3-freq
mkdir $name_input
mv $name_input.inp $name_input
cp auto-rerun-orca-input $name_input
cd $name_input
./auto-rerun-orca-input $name_input.inp
cp $name_input.out ..
cd ..
