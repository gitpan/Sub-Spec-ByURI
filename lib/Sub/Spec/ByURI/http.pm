package Sub::Spec::ByURI::http;
BEGIN {
  $Sub::Spec::ByURI::http::VERSION = '0.01';
}

use 5.010;
use strict;
use warnings;

use parent qw(Sub::Spec::ByURI);

# VERSION

sub _check {
    my ($self) = @_;
    $self->_
}

sub module {
}

sub sub {
}

sub spec {
}

sub list_subs {
}

# sub list_mods {}

sub call {
}

1;
# ABSTRACT: http (and https) scheme handler for Sub::Spec::ByURI



__END__
=pod

=head1 NAME

Sub::Spec::ByURI::http - http (and https) scheme handler for Sub::Spec::ByURI

=head1 VERSION

version 0.01

=head1 SYNOPSIS

 # specify module
 http://HOST/api/MOD::SUBMOD

 # specify module & sub name
 https://HOST/api/MOD::SUBMOD/FUNC

 # specify module, sub, and arguments
 http://HOST:5000/api/MOD::SUBMOD/FUNC?ARG1=VAL1&ARG2=VAL2

=head1 DESCRIPTION

HTTP server must implement L<Sub::Spec::HTTP> specification.

Since URL format can vary (e.g. some host might use
http://HOST/api/v1/MOD/SUBMOD/FUNC/arg1/arg2, some other might use
http://HOST/MOD::SUBMOD/FUNC?arg1=1&arg2=2, and so on), to determine module(),
sub(), and args(), an 'about' command is requested on the server to get
'server_url', 'module', 'sub', 'args' information. It is then cached for a
while.

Caching is also done for spec().

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

