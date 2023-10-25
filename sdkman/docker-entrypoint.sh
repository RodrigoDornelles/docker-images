#!/bin/bash
set -e

mkdir -p /tmp/android /tmp/sdkman-tmp /tmp/sdkman-candidates

if [[ ("$1" = 'sh' || "$1" = 'bash') && "$2" = "-c" ]]; then
    shift 2
    bash -c "source /root/.bashrc && source $SDKMAN_DIR/bin/sdkman-init.sh && ($@)"
elif [[ ("$1" = 'sh' || "$1" = 'bash') && $# -eq 2 ]]; then
    r=$(<"$2")
    bash -c "source /root/.bashrc && source $SDKMAN_DIR/bin/sdkman-init.sh && ($r)"
elif [ $# -gt 0 ]; then
    bash -c "source /root/.bashrc && source $SDKMAN_DIR/bin/sdkman-init.sh && ($*)"
else
    source /root/.bashrc
    source $SDKMAN_DIR/bin/sdkman-init.sh
    exec bash
fi
