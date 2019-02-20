#!/usr/bin/perl

binmode(STDERR, ":utf8");

$list = shift;
die "usage: $0 ReplaceList.txt\n" unless $list;
open(FILE, "<:utf8", $list) or die "$0: error: $!\n";
my %hash;
while(<FILE>){
	next if /^#/;
	chomp $_;
	@F = split /	/, $_;
	if(length $hash{$F[0]}){
		print STDERR "$0: duplicate: $F[0] ($F[2]) overrode by CID+$F[1]\n";
	}
	$hash{$F[0]} = $F[1];
}
close(FILE);

$s = do {local $/; <>};
while(my ($key, $val) = each(%hash)){
 if($s =~ /$key/){
  $s =~ s/$key.*\n/$key $val\n/;
 } else {
  print STDERR "$0: skipped: $key not found\n";
  next;
 }
}
print $s;
