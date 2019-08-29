#! /bin/bash

docker exec -i iperf3_NAT_mode_container_server /bin/bash << 'EOF'
iperf3 -s $(hostname -I | awk '{print $1}'| cut -f2 -d:) -p 22220

EOF
