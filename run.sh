#!/bin/bash

cd /home/ubuntu/code/checkouts/cryptagorg && \
sudo systemd-run --slice=machine rkt run --set-env=CADDYPATH=/.caddy --volume site,kind=host,source=/home/ubuntu/code/checkouts/cryptagorg --volume dotcaddy,kind=host,source=/home/ubuntu/.caddy --insecure-options=image --net=host --volume=resolv,kind=host,source=/etc/resolv.conf,readOnly=true --mount volume=resolv,target=/etc/resolv.conf --volume cacert,kind=host,source=/etc/ssl/certs/ca-certificates.crt,readOnly=true --mount volume=cacert,target=/etc/ssl/certs/ca-certificates.crt /home/ubuntu/code/checkouts/cryptagorg/cryptagorg-linux-amd64.aci
