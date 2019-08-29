#! /bin/sh

echo "************** iperf3 Default overlay MODE TEST STARTS ******************" 
echo "Mode" "," "Throughput TCP MBps" "," "Throughput UDP MBps " > iperf3_VXLAN_mode_result.xlsm

for i in `seq 1 30`
do
# TCP and UDP throughput test
docker exec -i iperf3_VXLAN_container_client bash <<'EOF' >> iperf3_VXLAN_mode_result.xlsm
echo "Def. overlay mode" "," `(iperf3 -c 10.0.0.2 -p 33330 -b 0 -f M | head -n 16 |  tail -n 1 | awk '{print $7}')` "," `(iperf3 -c 10.0.0.2 -p 33331 -b 0 --udp -f M | head -n 16 |  tail -n 1 | awk '{print $7}')`
exit
EOF
done

killall sar

# Calculate average of the results
echo 'Average' ',' `cat iperf3_VXLAN_mode_result.xlsm | awk -F',' '{sum+=$2} END {print sum/(NR-1)}'` ',' `cat iperf3_VXLAN_mode_result.xlsm | awk -F',' '{sum+=$3} END {print sum/(NR-1)}'`>> iperf3_VXLAN_mode_result.xlsm


