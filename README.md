# mfpx

The project mfpx is a collection of shell and sqlite3 scripts to Manage
[FPX] elo rating lists using simple commands.

FPX is the Portuguese Chess Federation, aka Federação Portuguesa de Xadrez.

## Usage

```shell
  Usage: mfpx [COMMAND]
  Extracts, and processes ELO rating lists.
  Currently the portuguese chess federation.
  Options:
      -h,--help   -- display help and exit
      --version   -- display version and exit
      -i          -- Open database iteractively
      -u          -- Update lists
      -p          -- Print relevants environment variables
      -l          -- List installed scripts
      -r [SCRIPT] -- Run installed scripts
      -c [SCRIPT] -- Run custom script
  Examples:
      mfpx -u     -- updates database

  Report bugs to <cpmachado@protonmail.com>
  or file a issue at https://github.com/cpmachado/bin
```

## Motivation

Member of [Scacci Vox], [cpmachado], myself, am a chess player and arbiter in
Portugal.

I pretty much hate Swiss Manager, and found a way to import custom lists via
building my own lists.

Swiss Manager is an outdated software even at its time.
The Portuguese Federation exports lists in either Latin-1 or UTF-8, go figure.

That pretty much sucks, so my script gets the CSV files from FPX, and converts
them all to UTF-8 and exports them to a simple sqlite3 database.

From this you can export to your own CSV for tournament lists.

## Dependencies

- sh, in any unix like system or cygwin, wsl if you like Windows.
- wget, to extract the files
- iconv, to convert them buggers
- sqlite3, for the database

## Current Status

It extracts and populates a database called "fpx.db", it will be
configurable in future.

## LICENSE

MIT License

Copyright (c) 2020 Carlos Pinto Machado

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[FPX]: http://www.fpx.pt
[Scacci Vox]: https://github.com/scaccivox
[cpmachado]: https://cpmachado.github.io
