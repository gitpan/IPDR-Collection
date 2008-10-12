package IPDR::Collection::Cisco;

use warnings;
use strict;
use IO::Select;
use IO::Socket;
use POSIX;

$SIG{CHLD}="IGNORE";

=head1 NAME

IPDR::Collection::Cisco

=head1 VERSION

Version 0.04

=cut

our $VERSION = '0.04';

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use IPDR::Collection::Cisco;

    my $foo = IPDR::Collection::Cisco->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 FUNCTIONS

=head2 function1

=cut

sub new {

        my $self = {};
        bless $self;

        my ( $class , $attr ) =@_;

        my ( %handles );
	my ( %complete_decoded_data );

        $self->{_GLOBAL}{'DEBUG'}=0;

        while (my($field, $val) = splice(@{$attr}, 0, 2))
                { $self->{_GLOBAL}{$field}=$val; }

        $self->{_GLOBAL}{'STATUS'}="OK";

        if ( !$self->{_GLOBAL}{'VendorID'} )
                { $self->{_GLOBAL}{'VendorID'}="Generic Client"; }

        if ( !$self->{_GLOBAL}{'ServerIP'} )
                { die "ServerIP Required"; }

        if ( !$self->{_GLOBAL}{'ServerPort'} )
                { die "ServerPort Required"; }

        if ( !$self->{_GLOBAL}{'KeepAlive'} )
                { $self->{_GLOBAL}{'KeepAlive'}=60; }

        if ( !$self->{_GLOBAL}{'Timeout'} )
                { $self->{_GLOBAL}{'Timeout'}=5; }

        if ( !$self->{_GLOBAL}{'Type'} )
                { $self->{_GLOBAL}{'Type'}=0; }

        if ( !$self->{_GLOBAL}{'XMLDirectory'} )
                { $self->{_GLOBAL}{'XMLDirectory'}=0; }

        if ( !$self->{_GLOBAL}{'DataHandler'} )
                { die "DataHandler Function Must Be Defined"; }

        $self->{_GLOBAL}{'handles'}= \%handles;
	$self->{_GLOBAL}{'complete_decoded_data'} = \%complete_decoded_data;

        return $self;
}

sub get_data_segment
{
my ( $self ) = shift;
my ( $dataset ) ;

return 1;
}

sub return_error
{
my ( $self ) = shift;
return $self->{_GLOBAL}{'ERROR'};
}

sub return_status
{
my ( $self ) = shift;
return $self->{_GLOBAL}{'STATUS'};
}

sub connect
{
my ( $self ) = shift;

# We need to add binding to specific addresses at
# some point.
# The new construct can slurp them in now anyway
# they are just ignored.

return 1;
}

sub check_data_available
{
my ( $self ) = shift;

$self->{_GLOBAL}{'STATUS'}="Socket Closed";
$self->{_GLOBAL}{'ERROR'}="Socket Closed";
}


sub check_data_handles
{
my ( $self ) = shift;
}

sub send_connection_header
{
my ( $self ) = shift;
return 1;
}

sub _process_docsis
{
my ( $self ) = shift;
my ( $host_ip ) = shift;
my ( $raw_data ) = shift;
my ( $exported_data ) = $self->{_GLOBAL}{'complete_decoded_data'};
my ( %result );

return \%result;
}

sub return_template_data
{

my ( %templates ) =
	(
	);

return \%templates;
}

=head1 AUTHOR

Andrew S. Kennedy, C<< <shamrock at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to
C<bug-ipdr-cisco at rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=IPDR-Collection-Cisco>.
I will be notified, and then you'll automatically be notified of progress on
your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc IPDR::Collection::Cisco

You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/IPDR-Collection-Cisco>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/IPDR-Collection-Cisco>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=IPDR-Collection-Cisco>

=item * Search CPAN

L<http://search.cpan.org/dist/IPDR-Collection-Cisco>

=back

=head1 ACKNOWLEDGEMENTS

=head1 COPYRIGHT & LICENSE

Copyright 2008 Andrew S. Kennedy, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1; # End of IPDR::Collection::Cisco
