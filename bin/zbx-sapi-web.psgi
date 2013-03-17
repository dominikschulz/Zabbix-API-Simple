#!/usr/bin/perl
# PODNAME: zbx-sapi-web.psgi
# ABSTRACT: Zabbix API Simple PSGI Endpoint
use strict;
use warnings;

use lib '../lib';

use Zabbix::API::Simple::Web;

my $Frontend = Zabbix::API::Simple::Web::->new();
my $app = sub {
    my $env = shift;

    return $Frontend->run($env);
};

=head1 NAME

zbx-sapi-web - Zabbix::API::Simple web endpoint (PSGI)

=cut
