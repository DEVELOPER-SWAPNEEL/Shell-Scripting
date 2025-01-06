# 3. Write a shell script to find the following
# 1. Home directory 2. Bash version 3. Host name 4. current directory
# 5. exit

#!/bin/bash

echo "1. Home directory: $HOME"
echo "2. Bash version: $BASH_VERSION"
echo "3. Host name: $(hostname)"
echo "4. Current directory: $(pwd)"
echo "5. Exiting..."
exit