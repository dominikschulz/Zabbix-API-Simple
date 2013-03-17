package Zabbix::API::Simple::Web::Plugin::DisableHostDerived;

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
extends 'Zabbix::API::Simple::Web::Plugin::DisableHostSimple';
# has ...
# with ...
# initializers ...
sub _init_alias { return 'disable_host_derived'; }

# your code here ...

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Zabbix::API::Simple::Web::Plugin::DisableHostDerived - Disable a host via an alias

=head1 DESCRIPTION

This module shows the use of an aliased action to disable an host.

=cut
