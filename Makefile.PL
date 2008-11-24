#!/usr/bin/perl

use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'IPDR::Collection',
    AUTHOR              => 'Andrew S. Kennedy <shamrock@cpan.org>',
    VERSION_FROM        => 'lib/IPDR/Collection/Client.pm',
    ABSTRACT       	=> 'IPDR Client Modules',
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'IPDR-Collection-*' },
);
