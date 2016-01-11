use v6;
unit class App::AnyBar;

has Int $.port is rw = 1738;
has Str $.host is rw = "127.0.0.1";

my subset Color of Str where any(<
    white
    red
    orange
    yellow
    green
    cyan
    blue
    purple
    black
    question
    exclamation
    quit
>);

method color(Color $color) {
    my $sock = IO::Socket::INET.new(
        host  => $!host,
        port  => $!port,
        proto => PROTO_UDP,
        type  => SOCK_DGRAM,
    );
    $sock.print($color);
    $sock.close;
}

method quit() { self.color('quit') }

=begin pod

=head1 NAME

App::AnyBar - perl6 client for AnyBar

=head1 SYNOPSIS

  use App::AnyBar;
  App::AnyBar.new.color('red');

=head1 DESCRIPTION

App::AnyBar is a perl6 client for L<https://github.com/tonsky/AnyBar>.

B<CAUTION!!> The current rakudo does not support UDP, so:

  $ perl6 -Ilib bin/anybar.p6 red
  zsh: segmentation fault  perl6 -Ilib bin/anybar.p6 red

Oops.

=head1 AUTHOR

Shoichi Kaji <skaji@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 Shoichi Kaji

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
