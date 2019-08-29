#! /bin/bash

touch sar_NAT_memcached.txt
echo "sar_NAT_memcached" > sar_NAT_memcached.txt
sar -u 8 >> sar_NAT_memcached.txt
