#! /bin/sh

parallel ::: "./memtier_NAT.sh" "./sar_NAT_memtier.sh"
