#! /bin/bash

BASEDIR=$(dirname $0)

sudo sysctl kernel.unprivileged_userns_clone=1

$BASEDIR/latest/chrome --user-data-dir="$BASEDIR/user-data-dir" $* &> /dev/null &
