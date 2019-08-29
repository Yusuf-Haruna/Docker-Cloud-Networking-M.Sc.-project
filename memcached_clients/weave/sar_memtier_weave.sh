#! /bin/sh

touch sar_weave_memtier.txt
echo "sar_weave_memtier" > sar_weave_memtier.txt
sar -u 8 >> sar_weave_memtier.txt
