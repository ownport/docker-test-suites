#!/usr/bin/env sh

set -eu

echo "[INFO] Install base packages" && \
    apk add --no-cache \
        python3

echo "[INFO] Install python3 deps" && \
    pip3 install \
        pytest \
        pytest-cov \
        plumbum \
        PyYAML

echo '[INFO] Update scripts and configs' && \
    mv /tmp/assets/sbin/entrypoint.sh /sbin

echo "[INFO] Remove build deps and clear temp files" && \
    # apk del .build-deps && \
    rm -rf /tmp/* \
    rm -rf /usr/lib/python3.6/ensurepip/_bundled/*

        
