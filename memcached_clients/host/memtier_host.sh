#! /bin/sh

echo "************** MEMCACHED HOST MODE TEST STARTS ******************" 
echo "Mode" "," "Throughput KBps " "," "Latency msec " "," "SET latency msec " "," "GET latency msec " > memcached_Host_mode_result.xlsm

# Perform the test 30 times
for i in `seq 1 30`
do
docker exec -i memtier_benchmark_host_mode_container_client bash <<'EOF' >> memcached_Host_mode_result.xlsm
memtier_benchmark --server=192.168.122.167 --port=11211 --protocol=memcache_binary --clients=50 --threads=4 --ratio=1:10 --test-time=1 > x.txt
echo "Host mode" "," `(cat x.txt | head -n 13 | tail -n 8 | tail -n 1 | awk '{print $6 " , " $5}')` "," `(cat x.txt | head -n 13 | tail -n 8 | head -n 5 | tail -n 1 | awk '{print $5}')` "," `(cat x.txt | head -n 13 | tail -n 8 | head -n 6 | tail -n 1 | awk '{print $5}')`
exit
EOF
done

killall sar

# Calculate average of the results
echo "Average" "," `cat memcached_Host_mode_result.xlsm | awk -F',' '{sum+=$2} END {print sum/(NR-1)}'` "," `cat memcached_Host_mode_result.xlsm | awk -F',' '{sum+=$3} END {print sum/(NR-1)}'` "," `cat memcached_Host_mode_result.xlsm | awk -F',' '{sum+=$4} END {print sum/(NR-1)}'` "," `cat memcached_Host_mode_result.xlsm | awk -F',' '{sum+=$5} END {print sum/(NR-1)}'` >> memcached_Host_mode_result.xlsm
