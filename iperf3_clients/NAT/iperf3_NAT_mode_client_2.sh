#! /bin/sh

parallel ::: "./iperf3_NAT.sh" "./sar_NAT.sh"
