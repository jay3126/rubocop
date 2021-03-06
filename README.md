[![Gem Version](https://badge.fury.io/rb/rubocop.png)](http://badge.fury.io/rb/rubocop)
[![Build Status](https://travis-ci.org/bbatsov/rubocop.png?branch=master)](https://travis-ci.org/bbatsov/rubocop)

# rubocop

Ruby code style checker based on the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide).

## Installation

```bash
$ gem install rubocop
```

## Basic Usage

Running `rubocop` with no arguments will check all Ruby source files in the current folder:

```bash
$ rubocop
```

Alternatively you can `rubocop` a list of files and folders to check:

```bash
$ rubocop app spec lib/something.rb
```

For more details check the available command-line options:

```bash
$ rubocop -h
```

## Configuration

The behavior of rubocop can be controlled via the
[.rubocop.yml](https://github.com/bbatsov/rubocop/blob/master/.rubocop.yml)
configuration file. The file can be placed either in your home folder
or in some project folder.

rubocop will start looking for the configuration file in the directory
it was started in and continue its way up to the home folder.

The file has the following format:

```yml
Encoding:
  Enabled: true

LineLength:
  Enabled: true
  Max: 79
```

It allows to enable/disable certain cops (checks) and to alter their
behavior if they accept any parameters.

## Compatibility

Unfortunately every major Ruby implementation has its own code
analysis tooling, which makes the development of a portable code
analyzer a daunting task.

rubocop currently supports MRI 1.9 and MRI 2.0. Support for JRuby and
Rubinius is not planned at this point.

## Copyright

Copyright (c) 2012-2013 Bozhidar Batsov. See LICENSE.txt for
further details.
