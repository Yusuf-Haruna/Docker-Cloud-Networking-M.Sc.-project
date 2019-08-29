#! /bin/bash

parallel ::: "./memcached_weave.sh" "./sar_memcached_weave.sh"
