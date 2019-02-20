#!/usr/bin/perl
#
# フォント名文字列を引数として受け取り、
# FontMenuNameDB 用にエンコードして返す。
#
# usage
# $ ./name-encode.pl "あらゝぎ明朝"
# 3,1,0,0x411,\3042\3089\309D\304E\660E\671D
# $

use Encode;

my $fontname = shift;
die "usage: $0 fontname\n" unless $fontname;

$enc = "";
foreach(split(//, decode_utf8 $fontname)){
 $enc .= sprintf("\\%X", ord $_);
}

print "3,1,0,0x411,$enc\n"
