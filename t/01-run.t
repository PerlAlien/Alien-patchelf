use strict;
use warnings;
use Test::More;
use Test::Alien;
use Alien::patchelf;

UTILITY:
{
    my ($result, $stderr, $exit) = Alien::patchelf->patchelf ("--help");
    like ($stderr, qr{^syntax\:\s.+patchelf\n},
        'Got expected first line from patchelf utility');
    diag '';
    diag ("\nUtility results:\n" . $result);
    diag ($stderr) if $stderr;
    diag "Exit code is $exit";
    diag '';
}

done_testing();

