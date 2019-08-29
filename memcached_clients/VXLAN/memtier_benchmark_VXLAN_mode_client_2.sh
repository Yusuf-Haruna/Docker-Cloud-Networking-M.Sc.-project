#! /bin/sh

parallel ::: "./memtier_VXLAN.sh" "./sar_VXLAN_memtier.sh"
