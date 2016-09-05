# rancher-rethinkdb

A Rancher-aware docker container for RethinkDB

## Building

Simply run the provided `build.sh` script.

## Usage

This images uses [giddyup](https://github.com/cloudnautique/giddyup) to
simply the reading of Rancher's metadata, and starts each RethinkDB node so
that it auto-joins its peers to form a cluster. Simply scale the server and
the cluster will grow.
