#!perl -T

use Test::More tests => 1;

sub test_64_bit
{

$tester=576466952313524498;

$origin = $tester;

print "Tester is '$tester'\n";

my($test1) = $tester & 0xFFFFFFFF; $tester >>= 32;
my($test2) = $tester & 0xFFFFFFFF;

$message = pack("NN",$test2,$test1);

($part1,$part2) = unpack("NN",$message);

$part1 = $part1<<32;
#$part1 & 0xFFFFFFFF;
$part1+=$part2;

print "Tester is '$tester' part1 is '$part1'\n";

if ( $origin!=$part1 )
        {
        fail("Perl is not supporting 64bit numbers, '$origin' '$part1'");
        }
        else
	{
	pass("64Bit support");
	}
}

BEGIN {
	test_64_bit();
	}


