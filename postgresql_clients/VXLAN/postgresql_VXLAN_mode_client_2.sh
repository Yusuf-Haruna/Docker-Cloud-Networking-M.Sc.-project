#!/bin/sh

parallel ::: "./postgresql_VXLAN.sh" "./sar_postgresql_VXLAN.sh"
