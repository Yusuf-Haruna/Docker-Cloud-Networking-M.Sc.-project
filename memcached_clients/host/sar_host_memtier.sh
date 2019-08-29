#! /bin/sh

touch sar_host_memtier.txt
echo "sar_host_memtier" > sar_host_memtier.txt
sar -u 8 >> sar_host_memtier.txt
