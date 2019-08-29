#! /bin/bash


parallel ::: "./iperf3_VXLAN.sh" "./sar_VXLAN.sh"
