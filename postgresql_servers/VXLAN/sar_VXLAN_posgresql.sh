#! /bin/sh

touch sar_VXLAN_postgresql.txt
echo "sar_VXLAN_postgresql" > sar_VXLAN_postgresql.txt
sar -u 5 >> sar_VXLAN_postgresql.txt
