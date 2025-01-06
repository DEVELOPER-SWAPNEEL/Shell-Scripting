# <<<comment
# 4. Write a shell script to extract the data from the date command, and display the result
# in different format.(if the date command gives “Thu Jan 2 14:21:54 IST 2014” then
# display the result in “2/Jan/2014/14.21”)
# comment>>>

current_date=$(date)
day=$(date +"%d")
month=$(date +"%b")
year=$(date +"%Y")
time=$(date +"%H:%M")
echo "$day/$month/$year"

