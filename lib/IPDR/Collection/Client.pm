package IPDR::Collection::Client;

use warnings;
use strict;
use IO::Select;
use IO::Socket;
use Unicode::MapUTF8 qw(to_utf8 from_utf8 utf8_supported_charset);

=head1 NAME

IPDR::Collection::Client - IPDR Collection Client

=head1 VERSION

Version 0.10

=cut

our $VERSION = '0.10';

=head1 SYNOPSIS

This is a IPDR module primarily written to connect and collect data
using IPDR from a Motorola BSR6400 CMTS. Some work is still required.

If you need an example you will need to email me as this is currently
changing between version releases.

This version is confirmed to work with 5.1.0 on a Motorola.

=head1 FUNCTIONS

=head2 function1

=cut

sub new {

        my $self = {};
        bless $self;

        my ( $class , $attr ) =@_;

        return $self;
}

sub return_keep_alive
{
my ( $self ) = shift;
}

sub construct_capabilities
{
my ( $self ) = shift;
my ( $required_capabilities ) = shift;
}

sub create_vendor_id
{
my ($vendor_name) =@_;
}

sub generate_ipdr_message_header
{
my ( $self ) = shift;
my ( $version ) = shift;
my ( $message_id ) = shift;
my ( $session_id ) = shift;
my ( $length ) = shift;
}

sub return_current_type
{
my ( $self ) = shift;
}

sub decode_message_type
{
my ( $self ) = shift;
}

sub send_disconnect
{
my ( $self ) = shift;
my ( $data ) = shift;
}

sub send_flow_stop
{
my ( $self ) = shift;
my ( $data ) = shift;
my ( $code ) = shift;
my ( $reason ) = shift;
}

sub send_get_keepalive
{
my ( $self ) = shift;
my ( $data ) = shift;
}

sub send_get_sessions
{
my ( $self ) = shift;
my ( $data ) = shift;
}

sub send_data_ack
{
my ( $self ) = shift;
my ( $config_id ) = shift;
my ( $seq_number ) = shift;
}

sub send_final_template_data_ack
{
my ( $self ) = shift;
my ( $data ) = shift;
}

sub send_flow_start_message
{
my ( $self ) = shift;
my ( $data ) = shift;
}

sub send_connect_message
{
my ( $self ) = shift;
}

sub construct_data_ack
{
my ( $self ) = shift;
my ( $config_id ) = shift;
my ( $sequence ) = shift;
}


sub construct_final_template_data_ack
{
my ( $self ) = shift;
}

sub construct_flow_stop
{
my ( $self ) = shift;
my ( $code ) = shift;
my ( $reason ) = shift;
}

sub construct_disconnect
{
my ( $self ) = shift;
}


sub construct_get_sessions
{
my ( $self ) = shift;
}

sub construct_get_keepalive
{
my ( $self ) = shift;
}


sub construct_flow_start
{
my ( $self ) = shift;
}

sub construct_connect_message
{
my ( $self ) = shift;
}

sub disconnect
{
my ( $self ) = shift;
}

sub connect
{
my ( $self ) = shift;
}

sub connected
{
my ( $self ) = shift;
}

sub send_message
{
my ( $self ) = shift;
my ( $message ) = shift;
}

sub create_initiator_id
{
my ( $self ) = @_;
}

sub _IpQuadToInt 
{
my ($self)= shift;
my($Quad) = shift; 
}

sub _IpIntToQuad { my($Int) = @_;
}

sub _message_types
{
}

sub _transpose_message_numbers
{
my ( $message_number ) =@_;
}

sub _transpose_message_names
{
my ( $message_name ) =@_;
}

sub _extract_template_data
{
my ( $self ) = shift;
my ( $template_data ) = shift;
my ( $template_extract) = shift;
}

sub _extract_utf8_string
{
my ( $data ) = @_;
}

sub _extract_ip_string
{
my ( $data ) = @_;
}

sub _extract_int
{
my ( $data ) = @_;
}

sub _extract_short
{
my ( $data ) = @_;
}

sub _extract_unknown
{
}

sub _extract_char
{
my ( $data ) = @_;
}

sub _extract_mac
{
my ( $data ) = @_;
}

sub _extract_long
{
my ( $data ) = @_;
}

sub _extract_list
{
my ( $data ) = @_;
}

sub template_store
{
my ( $self ) = shift;
my ( $data ) = shift;
}

sub template_return
{
my ( $self ) = shift;
}

sub template_value_definitions
{
}

sub decode_64bit_number
{
# see comments on 64bit stuff.
my ( $message ) =@_;
}

sub encode_64bit_number
{
my ( $number ) = @_;
}

sub check_data_available
{
my ( $self ) = shift;
}

# ***************************************************************

sub check_data_handles
{
my ( $self ) = shift;
}

sub get_data_segment
{
my ( $self ) = shift;
}

sub get_error
{
my ( $self ) = shift;
}

sub get_internal_value
{
my ( $self ) = shift;
my ( $attribute ) = shift;
}

sub set_internal_value
{
my ( $self ) = shift;
my ( $attrib ) = shift;
my ( $value ) = shift;
}

sub decode_data
{
my ( $self ) = shift;
}

sub test_64_bit
{
my $self = shift;
}


=head1 AUTHOR

Andrew S. Kennedy, C<< <shamrock at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-ipdr-cisco at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=IPDR-Cisco>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc IPDR::Cisco

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/IPDR-Cisco>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/IPDR-Cisco>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=IPDR-Cisco>

=item * Search CPAN

L<http://search.cpan.org/dist/IPDR-Cisco>

=back

=head1 ACKNOWLEDGEMENTS

Thanks to http://www.streamsolutions.co.uk/ for my Flash Streaming Server

=head1 COPYRIGHT & LICENSE

Copyright 2008 Andrew S. Kennedy, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of IPDR::Cisco
