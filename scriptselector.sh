#!/bin/sh

# Näyttää skriptikansion sisällön dmenussa ja ajaa valitun

SPATH="/home/eltsu7/Documents/Koodit/Skriptit"
file=`(ls $SPATH | dmenu)`
. "$SPATH/$file"

exit
