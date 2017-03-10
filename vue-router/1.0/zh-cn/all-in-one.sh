#!/bin/bash

cat SUMMARY.md | grep ^# | awk '{print $1" "$2}' > all.md
echo "---" >> all.md
echo "" >> all.md
cat SUMMARY.md | grep '\- \[' | awk -F'(' '{print $2}' | sed 's/)//' | xargs.exe -i cat {} >> all.md
