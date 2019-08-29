#!/bin/sh

touch sar_VXLAN_pgbench.txt
echo "sar_VXLAN_pgbench" > sar_VXLAN_pgbench.txt
sar -u 5 >> sar_VXLAN_pgbench.txt
