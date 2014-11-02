#!/bin/bash -eu
source '/tmp/vagrant/common.sh'

# group name
group="topsecret"

if [ -z "$(grep -e "^${group}" /etc/group)" ]
then
    log_info "Configuring group ${group}"
    sudo /usr/sbin/groupmod -n "${group}" root
fi
