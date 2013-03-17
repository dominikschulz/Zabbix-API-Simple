package Zabbix::API::Simple::Web::Plugin::AddHostDerived;
# ABSTRACT: Example plugin to add an host via alias

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
extends 'Zabbix::API::Simple::Web::Plugin::AddHostSimple';
# has ...
# with ...
# initializers ...
sub _init_alias { return 'add_host_derived'; }

# your code here ...

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Zabbix::API::Simple::Web::Plugin::AddHostDerived - Derived alias example

=head1 DESCRIPTION

This plugin demonstrates the use of an dervied plugin class as an alias.

The purpose of this class is to serve as an alias to its baseclass. It will
inherit the behaviour but can be equiped with a whole different configuration.

=cut
