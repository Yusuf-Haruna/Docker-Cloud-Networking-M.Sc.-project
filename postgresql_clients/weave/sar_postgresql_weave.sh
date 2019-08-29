#!/bin/sh

touch sar_weave_pgbench.txt
echo "sar_weave_pgbench" > sar_weave_pgbench.txt
sar -u 5 >> sar_weave_pgbench.txt
