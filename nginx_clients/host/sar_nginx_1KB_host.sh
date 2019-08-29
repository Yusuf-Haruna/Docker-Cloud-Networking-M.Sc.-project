#! /bin/sh

touch sar_nginx_client_1KB_host.txt
echo "sar_nginx_client_1KB_host" >  sar_nginx_client_1KB_host.txt
sar -u 32 >> sar_nginx_client_1KB_host.txt
