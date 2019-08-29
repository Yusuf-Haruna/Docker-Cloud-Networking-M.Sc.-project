#! /bin/sh

touch sar_host_postgresql.txt
echo "sar_host_postgresql" > sar_host_postgresql.txt
sar -u 5 >> sar_host_postgresql.txt
