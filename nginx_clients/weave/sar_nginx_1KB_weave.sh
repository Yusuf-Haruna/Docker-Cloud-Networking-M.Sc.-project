#! /bin/sh

touch sar_nginx_client_1KB_weave.txt
echo "sar_nginx_client_1KB_weave" >  sar_nginx_client_1KB_weave.txt
sar -u 32 >> sar_nginx_client_1KB_weave.txt
