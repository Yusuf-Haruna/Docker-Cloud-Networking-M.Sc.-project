#! /bin/sh

touch sar_nginx_server_1MB_host.txt
echo "sar_nginx_server_1MB_host" > sar_nginx_server_1MB_host.txt
sar -u 32 >> sar_nginx_server_1MB_host.txt
