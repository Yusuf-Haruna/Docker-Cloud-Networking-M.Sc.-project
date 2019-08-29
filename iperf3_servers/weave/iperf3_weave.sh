#! /bin/bash

docker exec -i iperf3_weave_container_server /bin/bash << 'EOF'
parallel ::: "iperf3 -s $(hostname -I | awk '{print $2}'| cut -f2 -d:) -p 44440" "iperf3 -s $(hostname -I | awk '{print $2}'| cut -f2 -d:) -p 44441"

EOF
