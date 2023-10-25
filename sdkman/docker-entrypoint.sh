#!/bin/bash
set -e

source /root/.bashrc
source $SDKMAN_DIR/bin/sdkman-init.sh

exec "$@"
