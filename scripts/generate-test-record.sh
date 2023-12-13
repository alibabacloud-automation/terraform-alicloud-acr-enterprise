#!/usr/bin/env bash

# generate-test-record
if [ "$1" == "false" ];then
  exit 0
fi

success=true
if [ -n "$2" ] ;then
  success=false
fi

executePath=examples/complete

testRecordFileTmp=${executePath}/TestRecord.md.tmp
touch $testRecordFileTmp

time=$(date -u "+%d %b %Y %H:%M UTC")
echo -e "## $time\n" > $testRecordFileTmp
echo -e "success: ${success}\n\n### Versions\n" >> $testRecordFileTmp

cd $executePath
row=$(terraform version | sed -n '/^$/=')
if [ -n "$row" ]; then
  version=`echo "$(terraform version | sed -n "1,${row}p")"`
else
  version=`echo "$(terraform version)"`
fi
cd - >/dev/null 2>&1

echo "${version}" >> $testRecordFileTmp
echo -e "\n### Error\n" >> $testRecordFileTmp

if [ -n "$2" ] ;then
  echo $2 >> $testRecordFileTmp
fi

# update-test-record
git pull --rebase origin main
git config --global --add safe.directory '*'

if [ ! -f "${executePath}/TestRecord.md" ]; then
  touch ${executePath}/TestRecord.md
fi

echo -e "\n" >> ${executePath}/TestRecord.md.tmp
cat ${executePath}/TestRecord.md >> ${executePath}/TestRecord.md.tmp
cat ${executePath}/TestRecord.md.tmp > ${executePath}/TestRecord.md

git add **/TestRecord.md