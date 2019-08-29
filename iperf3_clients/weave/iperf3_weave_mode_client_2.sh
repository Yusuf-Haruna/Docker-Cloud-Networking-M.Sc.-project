#! /bin/sh

parallel ::: "./iperf3_weave.sh" "./sar_weave.sh"
