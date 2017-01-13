#!/bin/bash
current=`ls -d chapter* | sort -r | head -n1 | sed 's/chapter//'`
current=$((current +1))
mkdir chapter$current
echo "\chapter{$1}" >> chapter$current/chapter$current.tex

