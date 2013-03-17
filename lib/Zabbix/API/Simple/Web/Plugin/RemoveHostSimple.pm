package Zabbix::API::Simple::Web::Plugin::RemoveHostSimple;
# ABSTRACT: Example plugin to remove an host

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
extends 'Zabbix::API::Simple::Web::Plugin';
# has ...
has 'group_id' => (
    'is'    => 'rw',
    'isa'   => 'Int',
);
# with ...
# initializers ...
sub _init_fields { return [qw(hostname)]; }

sub _init_alias { return 'remove_host_simple'; }

# your code here ...
sub execute {
    my $self = shift;
    my $request = shift;

    return unless $request->{'hostname'};
    my $hostname = $request->{'hostname'};

    my $filter = {};
    if(defined($self->group_id())) {
        $filter->{'groupids'} = $self->group_id();
    }

    if($self->sapi()->host_delete($hostname,$filter)) {
        $self->logger()->log( message => 'Deleted host: '.$hostname, level => 'debug', );
        return 1;
    } else {
        $self->logger()->log( message => 'Failed to delete host: '.$hostname, level => 'error', );
        return;
    }
}

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Zabbix::API::Simple::Web::API::Plugin::RemoveHostSimple - Remove a host

=head1 DESCRIPTION

This plugin shows how to remove an host.

=cut
