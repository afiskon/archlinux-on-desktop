#!/usr/bin/env perl

use strict;
use warnings;

while(my $fname = <*.mp3>) {
  my $at = `mp3info -p "%a - %t.mp3" "$fname"`;
  if($at ne $fname) {
    printf("$fname -> $at\n");
    rename($fname, $at);
  }
}
