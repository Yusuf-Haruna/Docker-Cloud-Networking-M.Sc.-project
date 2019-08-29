#! /bin/bash

docker exec -i memcached_host_mode_container_server /bin/bash << 'EOF'
service memcached start
memcached -l 192.168.122.167 -p 11211 -u memcache

EOF
