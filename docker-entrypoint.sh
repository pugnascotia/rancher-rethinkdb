#!/bin/bash

set -ex

if [ "$1" = 'rethinkdb-cluster' ]; then
    shift

    giddyup service wait scale

    PRIMARY_IP=$(giddyup ip myip)
    JOIN_LIST=$(giddyup ip stringify --prefix '--join ' --suffix ':29015' --delimiter ' ')

    exec rethinkdb \
        --bind all \
        --canonical-address $PRIMARY_IP \
        $JOIN_LIST \
        "$@"
fi

exec "$@"
