#!/bin/sh -
#
# usage: adujst-linegap.sh < features
sed -e 's/ Descender [-0-9]*/ Descender -370/g' \
    -e 's/winDescent [0-9]*/winDescent 370/g' \
    -e 's/VertTypoLineGap [0-9]*/VertTypoLineGap 1000/g'