#4. Execute the “ps -ef” and “ps -ux” command. Write a shell program that takes the
# output of these two commands and display the detail about a process whose parent id
# is 2. The detail about a process will be shown as it is shown during the execution of
# “ps -ux” command.
#!/bin/bash

# Run ps -ef to find processes with PPID=2
process_ids=$(ps -ef | awk '$3 == 2 {print $2}')

# Display details in 'ps -ux' format for each matching process
if [[ -z "$process_ids" ]]; then
    echo "No processes found with PPID=2."
else
    echo "Processes with PPID=2 (formatted as 'ps -ux'):"
    ps -ux | awk -v pids="$process_ids" '
    BEGIN { split(pids, pid_array); for (i in pid_array) pid_map[pid_array[i]] = 1 }
    NR==1 || $2 in pid_map'
fi