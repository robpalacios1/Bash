#!/bin/bash
# 24_fileOperations.sh
# Author: Roberto Palacios

echo "\nOperation of a File"
mkdir -m 755 backupScripts

echo -e "\nCopy Scripts from current directory to new directory backupScripts"
cp *.* backupScripts/
ls -la backupScripts/

echo -e "\nMove the backupScripts Dirto another path: $HOME "
mv backupScripts $HOME

echo -e "\nRemove all files .txt"
rm * .txt