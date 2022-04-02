#!/usr/bin/env bash

## GETS THE CURRENT MODULE ROOT DIRECTORY
MOD_GAIN_HONOR_BOSS_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

source $MOD_GAIN_HONOR_BOSS_ROOT"/conf/conf.sh.dist"

if [ -f $MOD_GAIN_HONOR_BOSS_ROOT"/conf/conf.sh" ]; then
    source $MOD_GAIN_HONOR_BOSS_ROOT"/conf/conf.sh"
fi
