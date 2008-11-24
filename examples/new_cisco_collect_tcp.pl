#!/usr/local/bin/perl

use strict;
use IPDR::Collection::Cisco;

my $ipdr_client = new IPDR::Collection::Cisco (
			[
			VendorID => 'VirginMedia IPDR Client',
			ServerIP => '213.48.102.216',
			ServerPort => '15000',
			XMLDirectory => '/home/poller/XMLDumps/',
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

print "received ipdr from '$remote_ip'\n";

sleep(60);

#foreach my $sequence ( sort { $a<=> $b } keys %{$data} )
#	{
#	print "Sequence  is '$sequence'\n";
#	foreach my $attribute ( keys %{${$data}{$sequence}} )
#		{
#		print "Sequence '$sequence' attribute '$attribute' value '${$data}{$sequence}{$attribute}'\n";
#		}
#	}

}

