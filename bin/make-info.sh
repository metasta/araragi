#!/bin/sh -
#
# usage: make-info.sh cidfontinfo

function die() # $1 = msg
{
	echo "$1" >&2
	exit 1
}


test -r "$1"      || die "usage: make-info.sh cidfontinfo version"
test "x$2" != "x" || die "usage: make-info.sh cidfontinfo version"

sed -e '/^XUID/d' -e '/^Layout/d' -e '/^Subset/d' \
    -e 's/SourceHanSansJP/AraragiSans/g' \
    -e 's/SourceHanSerifJP/AraragiSerif/g' \
    -e 's/Source Han Sans JP/Araragi Sans/g' \
    -e 's/Source Han Serif JP/Araragi Serif/g' \
	   -e 's/^version.*$/version                    ('"$2"')/g' $1