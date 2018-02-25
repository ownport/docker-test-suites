#!/usr/bin/env sh

set -eu

if [ -e apk-requirements.txt ]; then
	apk add --no-cache $(cat apk-requirements.txt) 
fi

if [ -e py3-requirements.txt ]; then
	pip2 install -r py3-requirements.txt
fi

case ${1} in
    test:all)        
        echo "[INFO] Run all tests"
        pytest
        ;;
    help)
        echo 'Available options:'
        echo ' test:all     - Run all tests'
        echo ' help         - Displays the help'
        echo ' [command]    - Execute the specified command, eg. bash.'
        ;;
    *)
        exec "$@"
        ;;
esac 
