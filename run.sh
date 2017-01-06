#!/bin/bash

sudo systemd-run --slice=machine rkt run --set-env=CADDYPATH=/.caddy --volume site,kind=host,source=`pwd` --volume dotcaddy,kind=host,source=/home/ubuntu/.caddy --insecure-options=image --net=host cryptagorg-linux-amd64.aci
