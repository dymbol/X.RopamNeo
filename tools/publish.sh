app_name="xropamneo"
podman save --output ${app_name}-$(git branch --show-current).tar ${app_name}-$(git branch --show-current):latest
rsync -v ${app_name}-$(git branch --show-current).tar  user@host.xyz:/home/user/${app_name}-$(git branch --show-current).tar