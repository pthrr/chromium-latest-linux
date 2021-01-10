#! /bin/bash

BASEDIR=$(dirname $0)

if [ $(sudo -A sysctl kernel.unprivileged_userns_clone | tail -c 2) -eq 0 ]; then
        sudo -n sysctl kernel.unprivileged_userns_clone=1
fi

$BASEDIR/latest/chrome --user-data-dir="$BASEDIR/user-data-dir" $* &> /dev/null &
