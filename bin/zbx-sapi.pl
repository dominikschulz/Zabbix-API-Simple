#!/usr/bin/perl
# PODNAME: zbx-sapi
# ABSTRACT: Zabbix API Simple CLI
use strict;
use warnings;

use Zabbix::API::Simple::Cmd;

# All the magic is done using MooseX::App::Cmd, App::Cmd and MooseX::Getopt
my $ZbxSpooler = Zabbix::API::Simple::Cmd::->new();
$ZbxSpooler->run();

=head1 NAME

zbx-sapi - Zabbix::API::Simple CLI

=cut
