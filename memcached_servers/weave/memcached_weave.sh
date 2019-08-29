#! /bin/bash


docker exec -i memcached_weave_container_server /bin/bash << 'EOF'
service memcached start

memcached -l $(hostname -I | awk '{print $2}' | cut -f2 -d:) -p 11211 -u memcache

EOF
