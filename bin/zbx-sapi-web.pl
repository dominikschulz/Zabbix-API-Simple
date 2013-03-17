#!/usr/bin/perl
# PODNAME: zbx-sapi-web.pl
# ABSTRACT: Zabbix API Simple CGI Endpoint
use strict;
use warnings;

use Plack::Loader;

my $app = Plack::Util::load_psgi("zbx-sapi-web.psgi");
Plack::Loader::->auto->run($app);

=head1 NAME

zbx-sapi-web - Zabbix::API::Simple web endpoint (CGI)

=cut
