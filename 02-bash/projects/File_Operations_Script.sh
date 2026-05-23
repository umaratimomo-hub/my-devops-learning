#!/bin/bash

mkdir -p bash_demo
echo "Directory 'bash_demo' created"
cd bash_demo
touch demo.txt
echo "File 'demo.txt' created"
echo "This file was created on $(date)." > demo.txt
cat demo.txt
