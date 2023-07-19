#!/bin/bash

inp=$1

ip_sizes=$(awk '{ip[$1] += $10} END {for (i in ip) printf "%-19s %9s\n", i, ip[i]}' "$inp" | sort -k2rn -k1)

if [[ "$ip_size" =~ ^[0-9]+$ ]]; then

num_ips=$(echo "$ip_sizes" | wc -l)

#total=$(echo "$ip_sizes" | awk '{sum+=$2;} END {printf "%d (%.1fKiB)", sum, sum/1024;}')

total=$(echo "$ip_sizes" | grep -oP '(?<![.\d])\d+(?![.\d])' | awk '{sum+=$1;} END {print sum;}')
if (($total < 1024)); then
	    KB="$total"
    elif (($total < 1000000)); then
	        KB=$(echo "$total" | awk '{sum=$1/1024;printf "%.1fKiB\n",sum+0.05}')
	elif (($total > 1000000)); then
		    KB=$(echo "$total" | awk '{sum=$1/1048576;printf "%.1fMiB\n",sum+0.05}')
fi

# Print the number of unique IPs and total downloaded size
echo "There are $num_ips unique ips"
echo "Total downloaded: $total ($KB)"

# Print the top three IPs sorted by download size
echo "$ip_sizes" | awk 'NR <= 4 {printf "%-15s %9s\n", $1, $2}'

