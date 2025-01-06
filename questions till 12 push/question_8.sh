# 5. Write a shell script to extract the data from the date command, and display the result
# in numerical form with 12 hour format. (if the date command gives “Thu Jan 2
# 14:21:54 IST 2014” then display the result in “02/01/2014/2:21:54 PM”)
#!/bin/bash
date_str=$(date +"%d/%m/%Y/%I:%M:%S %p")
echo "$date_str"