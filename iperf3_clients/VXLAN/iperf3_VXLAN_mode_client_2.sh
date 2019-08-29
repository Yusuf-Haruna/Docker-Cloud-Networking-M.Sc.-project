#! /bin/sh

parallel ::: "./iperf3_VXLAN.sh" "./sar_VXLAN.sh"
