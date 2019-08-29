#! /bin/sh

touch sar_VXLAN_memtier.txt
echo "sar_VXLAN_memtier" > sar_VXLAN_memtier.txt
sar -u 10 >> sar_VXLAN_memtier.txt
