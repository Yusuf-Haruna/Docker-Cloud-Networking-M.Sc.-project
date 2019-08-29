#! /bin/sh

parallel ::: "./memtier_host.sh" "./sar_host_memtier.sh"
