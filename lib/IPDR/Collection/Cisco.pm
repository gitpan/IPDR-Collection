package IPDR::Collection::Cisco;

use warnings;
use strict;
use IO::Select;
use IO::Socket;
use POSIX;

$SIG{CHLD}="IGNORE";

=head1 NAME

IPDR::Collection::Cisco - IPDR Collection Client (Cisco Specification)

=head1 VERSION

Version 0.10

=cut

our $VERSION = '0.10';

=head1 SYNOPSIS

    use IPDR::Collection::Cisco;

=head1 FUNCTIONS

=head2 function1

=cut

sub new {

        my $self = {};
        bless $self;

        my ( $class , $attr ) =@_;

        return $self;
}

sub get_data_segment
{
my ( $self ) = shift;
return 1;
}

sub return_error
{
my ( $self ) = shift;
}

sub return_status
{
my ( $self ) = shift;
}

sub connect
{
my ( $self ) = shift;
}

sub check_data_available
{
my ( $self ) = shift;
}


sub check_data_handles
{
my ( $self ) = shift;
}

sub send_connection_header
{
my ( $self ) = shift;
my ( $handle ) = shift;
}

sub _process_docsis
{
my ( $self ) = shift;
my ( $host_ip ) = shift;
my ( $raw_data ) = shift;
}

sub return_template_data
{
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
