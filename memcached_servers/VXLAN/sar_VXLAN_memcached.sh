#! /bin/bash

touch sar_VXLAN_memcached.txt
echo "sar_VXLAN_memcached" > sar_VXLAN_memcached.txt
sar -u 10 >> sar_VXLAN_memcached.txt
