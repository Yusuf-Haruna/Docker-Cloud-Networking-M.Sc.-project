#! /bin/sh

echo "************ iperf3 WEAVE MODE TEST STARTS *****************" 
echo "Mode" "," "Throughput TCP MBps" "," "Throughput UDP MBps " > iperf3_weave_mode_result.xlsm

for i in `seq 1 30`
do
# TCP and UDP throughput test
docker exec -i iperf3_weave_container_client bash <<'EOF' >> iperf3_weave_mode_result.xlsm
echo "Weave mode" "," `(iperf3 -c 10.32.0.1 -p 44440 -b 0 -f M | head -n 16 |  tail -n 1 | awk '{print $7}')` "," `(iperf3 -c 10.32.0.1 -p 44441 -b 0 --udp -f M | head -n 16 |  tail -n 1 | awk '{print $7}')`
exit
EOF
done

killall sar

# Calculate average of the results
echo 'Average' ',' `cat iperf3_weave_mode_result.xlsm | awk -F',' '{sum+=$2} END {print sum/(NR-1)}'` ',' `cat iperf3_weave_mode_result.xlsm | awk -F',' '{sum+=$3} END {print sum/(NR-1)}'`>> iperf3_weave_mode_result.xlsm
