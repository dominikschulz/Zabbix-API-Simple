package Zabbix::API::Simple::Web::Plugin::EnableHostDerived;

use 5.010_000;
use mro 'c3';
use feature ':5.10';

use Moose;
use namespace::autoclean;

# use IO::Handle;
# use autodie;
# use MooseX::Params::Validate;
# use Carp;
# use English qw( -no_match_vars );
# use Try::Tiny;

# extends ...
extends 'Zabbix::API::Simple::Web::Plugin::EnableHostSimple';
# has ...
# with ...
# initializers ...
sub _init_alias { return 'enable_host_simple'; }

# your code here ...

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Zabbix::API::Simple::Web::Plugin::EnableHostDerived - Enable an host via an alias

=head1 DESCRIPTION

This plugins uses an alias to enable a host w/ a custom configuration.

=cut
