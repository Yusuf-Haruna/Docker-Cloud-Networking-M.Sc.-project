#! /bin/sh

touch sar_NAT_memtier.txt
echo "sar_NAT_memtier" > sar_NAT_memtier.txt
sar -u 8 >> sar_NAT_memtier.txt
