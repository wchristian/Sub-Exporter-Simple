use strict;
use warnings;

package Sub::Exporter::Simple;

use Sub::Exporter 'setup_exporter';

sub import {
    my ( $self, @subs ) = @_;
    return setup_exporter( { exports => [ @subs ], into_level => 1 } );
}

1;
