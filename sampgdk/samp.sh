#!/bin/bash
set -e

case "$1" in
    'test')
        exec /samp03/samp03svr
        ;;
    'start')
        exec nohup /samp03/samp03svr &
        ;;
    'stop')
        exec killall /samp03/samp03svr
        ;;
    'restart')
        killall /samp03/samp03svr
        sleep 1
        exec nohup /samp03/samp03svr &
        ;;
    *)
        echo "Usage: $0 test/start/stop/restart"
        exit 1
esac
