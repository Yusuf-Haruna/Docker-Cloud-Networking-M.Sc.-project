#! /bin/sh

parallel ::: "./nginx_1KB_test.sh" "./sar_nginx_1KB_weave.sh"
