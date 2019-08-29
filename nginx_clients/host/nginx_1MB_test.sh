#! /bin/sh

echo "************** nginx host mode 1MB html file test starts ******************"
echo "Mode" "," "Avg latency " "," "Stdev " "," "Max " "," "+/- Stdev " > nginx_1MB_host_mode_result.xlsm

# Perform the test 30 times for 1MB html file
for i in `seq 1 30`
do
docker exec -i wrk_benchmark_host_mode_container_client bash <<'EOF' >> nginx_1MB_host_mode_result.xlsm
echo "Host mode" "," `(wrk --thread 2 --connections 100 --rate 2000 http://192.168.122.167:80/host_one_MB_index.html | head -n 4 | tail -n 1 | awk '{print $2 " , "$3 " , " $4 " , " $5}')` 
exit
EOF
done

killall sar

# Calculate average of the results (1MB file)
echo "Average" "," `cat nginx_1MB_host_mode_result.xlsm | awk -F',' '{sum+=$2} END {print sum/(NR-1)}'` "," `cat nginx_1MB_host_mode_result.xlsm | awk -F',' '{sum+=$3} END {print sum/(NR-1)}'` "," `cat nginx_1MB_host_mode_result.xlsm | awk -F',' '{sum+=$4} END {print sum/(NR-1)}'` "," `cat nginx_1MB_host_mode_result.xlsm | awk -F',' '{sum+=$5} END {print sum/(NR-1)}'` >> nginx_1MB_host_mode_result.xlsm
