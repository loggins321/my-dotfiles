#!/bin/bash

pkill mako >2/dev/null
mako -c ~/.config/mako/user-config/nchat/config &

notify-send 'WhatSapp' '<b>%1</b>: %2'

pkill mako >2/dev/null
mako -c ~/.config/mako/config &