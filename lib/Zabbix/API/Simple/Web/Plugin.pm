package Zabbix::API::Simple::Web::Plugin;
# ABSTRACT: baseclass for any web plugin

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
use Zabbix::API::Simple;

# extends ...
# has ...
has 'config' => (
    'is'      => 'ro',
    'isa'     => 'Config::Yak',
    'lazy'    => 1,
    'builder' => '_init_config',
);

has 'logger' => (
    'is'      => 'rw',
    'isa'     => 'Log::Tree',
    'required'    => 1,
);

has 'sapi' => (
    'is'    => 'rw',
    'isa'   => 'Zabbix::API::Simple',
    'lazy'  => 1,
    'builder' => '_init_sapi',
);

has 'fields' => (
    'is'    => 'ro',
    'isa'   => 'ArrayRef',
    'lazy'  => 1,
    'builder' => '_init_fields',
);

has 'alias' => (
    'is'    => 'ro',
    'isa'   => 'Str',
    'lazy'  => 1,
    'builder' => '_init_alias',
);
# with ...
# initializers ...
sub _init_sapi {
    my $self = shift;
    
    my $SAPI = Zabbix::API::Simple::->new({
        'username'  => $self->config()->get('Zabbix::API::username'),
        'password'  => $self->config()->get('Zabbix::API::password'),
        'url'       => $self->config()->get('Zabbix::API::url'),
        'logger'    => $self->logger(),
    });
    
    return $SAPI;
}

sub _init_alias { return ''; }

# your code here ...

no Moose;
__PACKAGE__->meta->make_immutable;

1;

__END__

=head1 NAME

Zabbix::API::Simple::Web::API::Plugin - baseclass for any web plugin

=head1 DESCRIPTION

The plugins provided in these distribution are only examples. To fully use this module you must
implement your own plugins.

=cut
