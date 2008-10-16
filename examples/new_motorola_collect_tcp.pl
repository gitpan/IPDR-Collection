#!/usr/local/bin/perl

use strict;
use IPDR::Collection::Client;

my $ipdr_client = new IPDR::Collection::Client (
			[
			VendorID => 'IPDR Client',
			ServerIP => '10.1.1.1',
			ServerPort => '10000',
			KeepAlive => 60,
			Capabilities => 0x01,
			DataHandler => \&display_data,
			Timeout => 2,
			]
			);

# We send a connect message to the IPDR server
$ipdr_client->connect();

# If we do not connect stop.
if ( !$ipdr_client->connected )
        {
        print "Can not connect to destination.\n";
        exit(0);
        }

# We now send a connect message 
$ipdr_client->check_data_available();

exit(0);

sub display_data
{
my ( $remote_ip ) = shift;
my ( $remote_port ) = shift;
my ( $data ) = shift;

}


