#! /bin/sh

touch sar_nginx_server_1MB_NAT.txt
echo "sar_nginx_server_1MB_NAT" > sar_nginx_server_1MB_NAT.txt
sar -u 32 >> sar_nginx_server_1MB_NAT.txt
