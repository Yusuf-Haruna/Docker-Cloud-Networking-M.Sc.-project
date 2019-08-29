#! /bin/sh

touch sar_VXLAN.txt
echo "sar_VXLAN" > sar_VXLAN.txt
sar -u 40 >> sar_VXLAN.txt
