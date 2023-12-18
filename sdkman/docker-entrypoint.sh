#!/bin/bash
set -e

# silent root warning flutter in podman - https://github.com/flutter/flutter/issues/140330
if [[ -f /run/.containerenv ]] && ! [[ -f /.dockerenv ]]; then
    ln -s /run/.containerenv /.dockerenv 
fi

# useful to mount /tmp and persist cache between container runs 
for d in ${TMPDIR_PATH//:/}
do
    mkdir -p $d
done

# force execution of sdkman and bash terminal
if [[ ("$1" = 'sh' || "$1" = 'bash') && "$2" = "-c" ]]; then
    shift 2
    bash -c "source /root/.bashrc && source $SDKMAN_DIR/bin/sdkman-init.sh && ($@)"
elif [[ ("$1" = 'sh' || "$1" = 'bash') && $# -eq 2 && -f $2 ]]; then
    r=$(<"$2")
    bash -c "source /root/.bashrc && source $SDKMAN_DIR/bin/sdkman-init.sh && ($r)"
elif [ $# -gt 0 ]; then
    bash -c "source /root/.bashrc && source $SDKMAN_DIR/bin/sdkman-init.sh && ($*)"
else
    source /root/.bashrc
    source $SDKMAN_DIR/bin/sdkman-init.sh
    exec bash
fi
