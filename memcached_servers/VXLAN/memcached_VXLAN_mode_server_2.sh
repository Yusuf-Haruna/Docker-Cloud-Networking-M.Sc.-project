#! /bin/bash


parallel ::: "./memcached_VXLAN.sh" "./sar_VXLAN_memcached.sh"
