#!/bin/sh -
#
# usage: copyright.sh < features

sed -e 's|\(nameid 0 \".*\)\";|\1\\000A + \\00A9 2017 https://metasta.github.io/\";|g' \
    -e 's|\(nameid 0 1.*\)\";|\1\\0A + \\A9 2017 https://metasta.github.io/\";|g' \
    -e 's|\(nameid 10 \".*\)\";|\1\\000A + https://metasta.github.io/ (kyuji replacement)\";|g' \
    -e 's|\(nameid 10 1.*\)\";|\1\\0A + https://metasta.github.io/ (kyuji replacement)\";|g'