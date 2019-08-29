#! /bin/sh

touch sar_NAT.txt
echo "sar_NAT" > sar_NAT.txt
sar -u 40 >> sar_NAT.txt
