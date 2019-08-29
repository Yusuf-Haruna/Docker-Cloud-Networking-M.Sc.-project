#!/bin/sh

touch sar_NAT_pgbench.txt
echo "sar_NAT_pgbench" > sar_NAT_pgbench.txt
sar -u 5 >> sar_NAT_pgbench.txt
