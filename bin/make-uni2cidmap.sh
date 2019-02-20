#!/bin/sh -
#
# usage: make-uni2cidmap.sh CMap IVS

function die() # $1 = msg
{
	echo "$1" >&2
	exit 1
}

test -r "$1" || die "usage: make-uni2cidmap.sh CMap IVS"
test -r "$2" || die "usage: make-uni2cidmap.sh CMap IVS"
perl -alne 'print if s/^<0+([0-9a-f]+)> (\d+)$/\1:\2/g' "$1" | tr a-f A-F
perl -alne 'print if s/^(.*);.*; CID\+(\d+)$/\1:\2/g' "$2"
