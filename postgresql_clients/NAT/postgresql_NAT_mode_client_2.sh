#!/bin/sh

parallel ::: "./postgresql_NAT.sh" "./sar_postgresql_NAT.sh"
