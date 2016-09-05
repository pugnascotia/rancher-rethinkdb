#!/bin/sh

set -e

if [ ! -e giddyup ]; then
    curl -L https://github.com/cloudnautique/giddyup/releases/download/v0.14.0/giddyup > giddyup
    chmod +x giddyup
fi

docker build -t roryhunter/rancher-rethinkdb:latest .
