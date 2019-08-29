#!/bin/sh

parallel ::: "./postgresql_weave.sh" "./sar_postgresql_weave.sh"
