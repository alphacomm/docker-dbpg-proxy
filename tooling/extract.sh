#!/bin/bash

set -x

cd "$(dirname "$0")"
docker run alpine:3.7 \
    sh -c "(\
            apk add --no-cache python py-pip && \
            pip2 install komodo-python-dbgp \
        ) > /dev/null && \
        cat /usr/bin/pydbgpproxy" > pydbgpproxy.original

cp pydbgpproxy.original pydbgpproxy.edithere