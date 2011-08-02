use strict;
use warnings;

sub new {
  return bless {rolls => []}, shift;
}

sub roll {
  push @{shift->{rolls}}, shift;
}

sub score {
  my $total = 0;
  my @rolls = @{shift->{rolls}};

  for(1..10) {
    my $pins = shift @rolls;
    $total += $pins + shift(@rolls);
  }

  return $total;
};

1;