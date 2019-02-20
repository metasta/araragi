#!/usr/bin/perl
#
# usage: make-replacelist.pl uni2cidmap < Kyuji.txt

binmode STDIN,  ':utf8';
binmode STDOUT, ':utf8';
binmode STDERR, ':utf8';

$map = shift;
die "usage: $0 uni2cidmap\n" unless $map;

my %hash;
open(FILE, $map) or die "$0: error: $!\n";
while(<FILE>){
	chomp $_;
	@Fm = split /:/, $_;
	$hash{$Fm[0]} = $Fm[1];
}
close(FILE);

while(<>){
	next if /^#/;
	chomp $_;
	@F = split /\t/, $_;

	if(!(length $F[1])){
		print STDERR "$0: $_\t: skipped (kyuji undefined)\n";
		next;
	}

	$kyujiUCS = "";
	for($i = 0; $i < length $F[1]; $i++){
		$kyujiUCS .= " " if length $kyujiUCS;
		$kyujiUCS .= sprintf("%X", ord(substr $F[1], $i, 1));
	}
	$kyujiCID = $hash{$kyujiUCS};
	if(!(length $kyujiCID)){
		print STDERR "$0: $_\t: skipped (kyuji IVS not found)\n";
		next;
	}

	printf("<%08x>\t$kyujiCID\t$F[0]\t$F[1]\t$F[3]\n", ord $F[0]);
}