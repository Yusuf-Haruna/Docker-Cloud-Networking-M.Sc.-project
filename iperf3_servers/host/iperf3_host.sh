#! /bin/bash

docker exec -i iperf3_host_mode_container_server /bin/bash << 'EOF'
parallel ::: "iperf3 -s $(hostname -I | awk '{print $2}'| cut -f2 -d:) -p 11110" "iperf3 -s $(hostname -I | awk '{print $2}'| cut -f2 -d:) -p 11111" 
EOF
