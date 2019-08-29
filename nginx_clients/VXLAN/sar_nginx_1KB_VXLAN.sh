#! /bin/sh

touch sar_nginx_client_1KB_VXLAN.txt
echo "sar_nginx_client_1KB_VXLAN" >  sar_nginx_client_1KB_VXLAN.txt
sar -u 32 >> sar_nginx_client_1KB_VXLAN.txt
