#!/usr/bin/env bash
app_name="xropamneo"
podman build -t ${app_name}-$(git branch --show-current):latest .   
