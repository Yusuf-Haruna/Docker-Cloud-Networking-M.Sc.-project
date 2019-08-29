#!/bin/sh

parallel ::: "./postgresql_host.sh" "./sar_postgresql_host.sh"
