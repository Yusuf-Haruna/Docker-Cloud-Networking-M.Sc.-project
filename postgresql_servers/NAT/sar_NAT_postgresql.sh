#! /bin/sh

touch sar_NAT_postgresql.txt
echo "sar_NAT_postgresql" > sar_NAT_postgresql.txt
sar -u 5 >> sar_NAT_postgresql.txt
