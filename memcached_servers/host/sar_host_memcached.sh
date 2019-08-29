#! /bin/bash

touch sar_host_memcached.txt
echo "sar_host_memcached" > sar_host_memcached.txt
sar -u 8 >> sar_host_memcached.txt
