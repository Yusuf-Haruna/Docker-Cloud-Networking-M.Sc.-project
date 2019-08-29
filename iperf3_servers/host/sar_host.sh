#! /bin/bash

touch sar_host.txt
echo "sar_host" > sar_host.txt
sar -u 40 >> sar_host.txt
