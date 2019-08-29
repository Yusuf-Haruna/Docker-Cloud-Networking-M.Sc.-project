#! /bin/sh

touch sar_nginx_server_1MB_weave.txt
echo "sar_nginx_server_1MB_weave" > sar_nginx_server_1MB_weave.txt
sar -u 32 >> sar_nginx_server_1MB_weave.txt
