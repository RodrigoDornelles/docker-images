#!/bin/bash
set -e

# useful to mount /tmp and persist cache between container runs 
echo $TMPDIR_PATH | tr ':' ' ' | xargs mkdir -p

# silent root warning flutter in podman - https://github.com/flutter/flutter/issues/140330
if [[ -f /run/.containerenv ]] && ! [[ -f /.dockerenv ]]; then
    ln -s /run/.containerenv /.dockerenv 
fi

# replace tar command - https://github.com/leoafarias/fvm/issues/587
echo -e "#!/bin/bash\nset -e\n/bin/tar \$@ --no-same-owner" > /tmp/bin/tar
chmod +x /tmp/bin/tar

# flutter easy install (without analytics)
echo -e "#!/bin/bash\nset -e\nfvm install \$1\nfvm global \$1" > /tmp/bin/fei
echo -e "git config --global --add safe.directory \$FLUTTER_HOME\n" >> /tmp/bin/fei
echo -e "flutter precache\nflutter config --no-analytics\ndart --disable-analytics" >> /tmp/bin/fei
chmod +x /tmp/bin/fei

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
