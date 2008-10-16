#!/usr/local/bin/perl

use strict;
use IPDR::Collection::Cisco;

my $ipdr_client = new IPDR::Collection::Cisco (
			[
			VendorID => 'IPDR Client',
			ServerIP => '10.1.1.1',
			ServerPort => '10000',
			XMLDirectory => '/data/',
			Timeout => 2,
			Type => 'docsis',
			DataHandler => \&display_data,
			DEBUG => 5
			]
			);

# Check for data from the IPDR server.
my $status = $ipdr_client->connect();

if ( !$status )
	{
	print "Status was '".$ipdr_client->return_status()."'\n";
	print "Error was '".$ipdr_client->return_error()."'\n";
	exit(0);
	}

$ipdr_client->check_data_available();

exit(0);

sub display_data
{
my ( $remote_ip ) = shift;
my ( $remote_port ) = shift;
my ( $data ) = shift;

}

