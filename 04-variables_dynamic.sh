#!/bin/bash

echo " Enter script name: "
read scriptname
echo " ============== Script started execution : $scriptname ============="
echo " Script started at $(date)"
start_time=$(date +%s) #no space between
echo " Script started at $start_time"
echo " Sleeping for 10 sec...."
sleep 10
end_time=$(date +%s)
echo " Test completed at $end_time"

time_taken=$(($end_time - $start_time))
# time_taken = $end_time - $start_time
echo " Total time taken : $time_taken seconds "
echo " ============================"