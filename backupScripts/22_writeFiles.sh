#!/bin/bash
# 22_writeFiles.sh
# Author: Roberto Palacios

echo $2 >> $1

#Adicion multilinea
cat <<EOM>> $1
$2
EOM