#!/bin/sh

touch sar_host_pgbench.txt
echo "sar_host_pgbench" > sar_host_pgbench.txt
sar -u 5 >> sar_host_pgbench.txt
