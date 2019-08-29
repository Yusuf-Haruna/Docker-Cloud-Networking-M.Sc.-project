#! /bin/bash

docker exec -i memcached_NAT_mode_container_server /bin/bash << 'EOF'
service memcached start
memcached -l $(hostname -I | awk '{print $1}'| cut -f2 -d:) -p 11211 -u memcache

EOF
