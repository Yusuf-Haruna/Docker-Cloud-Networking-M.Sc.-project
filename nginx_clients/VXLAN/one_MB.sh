#! /bin/sh

parallel ::: "./nginx_1MB_test.sh" "./sar_nginx_1MB_VXLAN.sh"
