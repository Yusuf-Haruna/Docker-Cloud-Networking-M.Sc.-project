#! /bin/bash

docker exec -i iperf3_VXLAN_container_server /bin/bash << 'EOF'
parallel ::: "iperf3 -s $(hostname -i | awk '{print $1}'| cut -f2 -d:) -p 33330" "iperf3 -s $(hostname -i | awk '{print $1}'| cut -f2 -d:) -p 33331"

EOF
