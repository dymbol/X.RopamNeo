#!/usr/bin/env bash
#driver=docker
driver=podman
$driver run -v /etc/X.RopamNeo/:/X.RopamNeo/config/ xropamneo