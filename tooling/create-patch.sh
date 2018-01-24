#!/bin/bash
set -x

cd "$(dirname "$0")"

diff -u pydbgpproxy.original pydbgpproxy.edithere | tee pydbgpproxy.patch