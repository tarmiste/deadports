#!/bin/sh

(cd /usr/games/nwn; exec ./nwn $@; cd -) > /dev/null
