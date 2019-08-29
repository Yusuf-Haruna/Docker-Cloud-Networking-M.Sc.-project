#!/bin/sh 

echo "************** postgresql weave mode test starts ******************"
echo "Mode" "," "latency average (ms) " "," "latency stddev (ms) "  > postgresql_weave_mode_result.xlsm

# Perform the test 30 times using pgbench benchmark
for i in `seq 1 30`
do
docker exec -i pgbench_weave_mode_container_client bash <<'EOF' >> postgresql_weave_mode_result.xlsm
pgbench --client=20 --jobs=4 --transactions=5 --rate=300 template1 --host=10.32.0.1 --port 5432 --username=postgres > x.txt
echo "Weave mode" "," `(cat x.txt | head -n 8 | tail -n 1 | awk '{print $4}')` "," `(cat x.txt | head -n 9 | tail -n 1 | awk '{print $4}')`
exit
EOF
done

killall sar

# Calculate average of the results 
echo "Average" "," `cat postgresql_weave_mode_result.xlsm | awk -F',' '{sum+=$2} END {print sum/(NR-1)}'` "," `cat postgresql_weave_mode_result.xlsm | awk -F',' '{sum+=$3} END {print sum/(NR-1)}'` >> postgresql_weave_mode_result.xlsm
