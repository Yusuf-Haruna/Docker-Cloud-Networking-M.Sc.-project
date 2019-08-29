#! /bin/sh

touch sar_weave.txt
echo "sar_weave" > sar_weave.txt
sar -u 40 >> sar_weave.txt
