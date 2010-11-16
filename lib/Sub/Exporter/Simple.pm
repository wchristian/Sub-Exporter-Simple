use strict;
use warnings;

package Sub::Exporter::Simple;
BEGIN {
  $Sub::Exporter::Simple::VERSION = '1.103200';
}

# ABSTRACT: just export some subs

use Sub::Exporter 'setup_exporter';

sub import {
    my ( $self, @subs ) = @_;
    return setup_exporter( { exports => [ @subs ], into_level => 1 } );
}

1;

__END__
=pod

=head1 NAME

Sub::Exporter::Simple - just export some subs

=head1 VERSION

version 1.103200

=head1 AUTHOR

Christian Walde <mithaldu@yahoo.de>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2010 by Christian Walde.

This is free software, licensed under:

  DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE, Version 2, December 2004

=cut

