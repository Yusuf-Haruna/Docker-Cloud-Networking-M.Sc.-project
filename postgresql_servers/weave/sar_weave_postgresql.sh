#! /bin/sh

touch sar_weave_postgresql.txt
echo "sar_weave_postgresql" > sar_weave_postgresql.txt
sar -u 5 >> sar_weave_postgresql.txt
