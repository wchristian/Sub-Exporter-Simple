use strict;
use warnings;

package Sub::Exporter::Simple;

use Sub::Exporter 'setup_exporter';

sub import {
    setup_exporter( { exports => [ @_ ], into_level => 1 } );
}

1;
