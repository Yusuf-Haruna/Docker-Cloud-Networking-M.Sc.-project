#! /bin/sh

parallel ::: "./iperf3_host.sh" "./sar_host.sh"
