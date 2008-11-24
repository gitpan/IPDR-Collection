#!/usr/local/bin/perl

use strict;
use IPDR::Collection::Client;

my $ipdr_client = new IPDR::Collection::Client (
			[
			VendorID => 'VirginMedia IPDR Client',
			ServerIP => '80.194.79.221',
			ServerPort => '14000',
			KeepAlive => 60,
			Capabilities => 0x01,
			DEBUG => 5,
			DataHandler => \&display_data,
			Timeout => 2,
			]
			);

#DEBUG => 5

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

print "Error was '".$ipdr_client->get_error()."'\n";

exit(0);

sub display_data
{
my ( $remote_ip ) = shift;
my ( $remote_port ) = shift;
my ( $data ) = shift;

foreach my $sequence ( sort { $a<=>$b } keys %{$data} )
	{
	print "Sequence  is '$sequence'\n";
	foreach my $attribute ( keys %{${$data}{$sequence}} )
		{
		print "Sequence '$sequence' attribute '$attribute' value '${$data}{$sequence}{$attribute}'\n";
		}
	}

}


