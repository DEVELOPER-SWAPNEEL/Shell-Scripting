# Write a shell program to convert distance into meter, cm and km.

distance_in_meter=$1
distance_in_cm=$(echo "$distance_in_meter *100"|bc)
distance_in_km=$(echo "$distance_in_meter /1000"|bc)
echo "distance in cm $distance_in_cm"
echo "distance in km $distance_in_km"