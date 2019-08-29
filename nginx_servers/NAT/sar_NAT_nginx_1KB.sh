#! /bin/sh

touch sar_nginx_server_1KB_NAT.txt
echo "sar_nginx_server_1KB_NAT" > sar_nginx_server_1KB_NAT.txt
sar -u 32 >> sar_nginx_server_1KB_NAT.txt
