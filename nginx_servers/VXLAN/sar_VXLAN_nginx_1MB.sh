#! /bin/sh

touch sar_nginx_server_1MB_VXLAN.txt
echo "sar_nginx_server_1MB_VXLAN" > sar_nginx_server_1MB_VXLAN.txt
sar -u 32 >> sar_nginx_server_1MB_VXLAN.txt
