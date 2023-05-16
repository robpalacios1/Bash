# !/bin/bash
# 26_gzip.sh
# Author: Roberto Palacios

echo "zip all scripts from Bash_scripting folder"
tar -cvf Bash_scripting.tar *.sh

# zip only one file with tar and pbzip2
tar -cf *.sh -c > Bash_scripting.tar.bz2