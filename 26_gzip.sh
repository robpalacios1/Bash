# !/bin/bash
# 26_gzip.sh
# Author: Roberto Palacios

echo "zip all scripts from Bash_scripting folder"
tar -cvf Bash_scripting.tar *.sh
pbzip2 -f Bash_scripting.tar

