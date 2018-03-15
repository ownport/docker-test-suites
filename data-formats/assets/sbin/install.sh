#!/usr/bin/env sh

set -eu

echo "[INFO] Install required packages" && \
    apk add --no-cache \
        snappy

echo "[INFO] Install build deps packages" && \
    apk add --no-cache --virtual .build-deps \
        python3-dev \
        build-base \
        snappy-dev \
        libffi-dev

echo "[INFO] Install data formats packages" && \
    pip3 install \
        cython==0.28 \
        python-snappy==0.5.2 \
        avro-python3==1.8.2 \
        fastavro==0.17.9 \
        cffi==1.11.4 \
        protobuf==3.5.1 

echo "[INFO] Remove build deps and clear temp files" && \
    apk del .build-deps && \
    rm -rf /tmp/* \
    rm -rf /usr/lib/python3.6/ensurepip/_bundled/*

        
