package Alien::patchelf;

use strict;
use warnings;
use parent qw( Alien::Base );
use Capture::Tiny qw /:all/;

our $VERSION = '0.01';

sub patchelf {
    my ($self, @args) = @_;
    my $utility = 'patchelf';
    if ($self->install_type('share')) {
        $utility = $self->bin_dir . "/$utility";
    }
    capture {system $utility, @args};
}


1;


__END__

=head1 NAME

Alien::patchelf - Alien module for the patchelf utility 


=head1 SYNOPSIS

    use Alien::patchelf;

    
=head1 DESCRIPTION

Sometimes you need to change the rpath of binary files,
for example for aliens that are installed in non-standard locations.  
The patchelf utility is used

This is not useful on Windows since dynamic libs are loaded from the PATH.


=head1 REPORTING BUGS

Please send any bugs, suggestions, or feature requests to 
L<https://github.com/shawnlaffan/perl-alien-patchelf/issues>.

=head1 SEE ALSO

L<Alien::Build>

=head1 AUTHORS

Shawn Laffan, E<lt>shawnlaffan@gmail.comE<gt>

=head1 COPYRIGHT AND LICENSE


Copyright 2022- by Shawn Laffan


This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself. 

=cut

