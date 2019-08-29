#! /bin/bash

touch sar_weave_memcached.txt
echo "sar_weave_memcached" > sar_weave_memcached.txt
sar -u 8 >> sar_weave_memcached.txt
