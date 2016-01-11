[![Build Status](https://travis-ci.org/shoichikaji/perl6-anybar.svg?branch=master)](https://travis-ci.org/shoichikaji/perl6-anybar)

NAME
====

App::AnyBar - perl6 client for AnyBar

SYNOPSIS
========

    use App::AnyBar;
    App::AnyBar.new.color('red');

DESCRIPTION
===========

App::AnyBar is a perl6 client for [https://github.com/tonsky/AnyBar](https://github.com/tonsky/AnyBar).

**CAUTION!!** The current rakudo does not support UDP, so:

    $ perl6 -Ilib bin/anybar.p6 red
    zsh: segmentation fault  perl6 -Ilib bin/anybar.p6 red

Oops.

AUTHOR
======

Shoichi Kaji <skaji@cpan.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2016 Shoichi Kaji

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.
