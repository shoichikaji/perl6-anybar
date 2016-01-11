#!/usr/bin/env perl6
use v6;
use App::AnyBar;

sub MAIN($color, Int :$port) {
    App::AnyBar.new(:$port).color($color);
}
