#!/bin/bash

FOLDER='docs-all-in-one/vuex/1.0/zh-cn'
mkdir -p docs-all-in-one/vuex/1.0/zh-cn

cat SUMMARY.md | grep ^# | awk '{print $1" "$2}' > ${FOLDER}/README.md
echo "---" >> ${FOLDER}/README.md
echo "" >> ${FOLDER}/README.md
cat SUMMARY.md | grep '\- \[' | awk -F'(' '{print $2}' | sed 's/)//' | xargs.exe -i cat {} >> ${FOLDER}/README.md

cp vuex.png ${FOLDER}
cp -rf tutorial ${FOLDER}
