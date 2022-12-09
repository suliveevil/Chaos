---
title: "ctags"
categories:
date: 2022-10-09 18:32:54 +0800
tags:
excerpt:
---

[universal-ctags/ctags](https://github.com/universal-ctags/ctags): A maintained ctags implementation


## 安装
```shell
brew install   universal-ctags
```

```shell
echo 'alias ctags="`brew --prefix`/bin/ctags"' >> $HOME/.zshrc
exec $SHELL
```

## 依赖

```dot
digraph G {
    "universal-ctags";
    "jansson";
    "libyaml";
    "universal-ctags" -> "jansson";
    "universal-ctags" -> "libyaml";
}
```

## 生态

[[Citre]]

[新人如何打造一个最小最轻量，tags流(非lsp)，c语言的工作环境，用于阅读linux kernel？ - Emacs China](https://emacs-china.org/t/tags-lsp-c-linux-kernel/19722/)

[dalance/ptags](https://github.com/dalance/ptags): A parallel universal-ctags wrapper for git repository

[[Vim 插件]]：[[gen_tags.vim]]、[[Tagbar]]、[[vista.vim]]

[[VSCode 插件]]：[[ctagsx]]

## 竞品

[[tree-sitter]]

[[cscope]]

[[Doxygen]]

[Glean](https://glean.software/): System for collecting, deriving and querying facts about source code

## help

```shell
ctags --help
Universal Ctags 5.9.0, Copyright (C) 2015-2022 Universal Ctags Team
Universal Ctags is derived from Exuberant Ctags.
Exuberant Ctags 5.8, Copyright (C) 1996-2009 Darren Hiebert
  Compiled: Oct  9 2022, 00:44:24
  URL: https://ctags.io/
  Optional compiled features: +wildcards, +regex, +gnulib_fnmatch, +gnulib_regex, +iconv, +option-directory, +xpath, +json, +interactive, +yaml, +case-insensitive-filenames, +packcc, +optscript

Usage: ctags [options] [file(s)]

Input/Output Options
  --exclude=<pattern>
       Exclude files and directories matching <pattern>.
       See also --exclude-exception option.
  --exclude-exception=<pattern>
      Don't exclude files and directories matching <pattern> even if
      they match the pattern specified with --exclude option.
  --filter[=(yes|no)]
       Behave as a filter, reading file names from standard input and
       writing tags to standard output [no].
  --filter-terminator=<string>
       Specify <string> to print to stdout following the tags for each file
       parsed when --filter is enabled.
  --links[=(yes|no)]
       Indicate whether symbolic links should be followed [yes].
  --maxdepth=<N>
       Specify maximum recursion depth.
  --recurse[=(yes|no)]
       Recurse into directories supplied on command line [no].
  -R   Equivalent to --recurse.
  -L <file>
       A list of input file names is read from the specified <file>.
       If specified as "-", then standard input is read.
  --append[=(yes|no)]
       Should tags should be appended to existing tag file [no]?
  -a   Append the tags to an existing tag file.
  -f <tagfile>
       Write tags to specified <tagfile>. Value of "-" writes tags to stdout
       ["tags"; or "TAGS" when -e supplied].
  -o   Alternative for -f.

Output Format Options
  --format=(1|2)
       Force output of specified tag file format [2].
  --output-format=(u-ctags|e-ctags|etags|xref|json)
      Specify the output format. [u-ctags]
  -e   Output tag file for use with Emacs.
  -x   Print a tabular cross reference file to standard output.
  --sort=(yes|no|foldcase)
       Should tags be sorted (optionally ignoring case) [yes]?
  -u   Equivalent to --sort=no.
  --etags-include=<file>
       Include reference to <file> in Emacs-style tag file (requires -e).
  --input-encoding=<encoding>
       Specify <encoding> of all input files.
  --input-encoding-<LANG>=<encoding>
       Specify <encoding> of the <LANG> input files.
  --output-encoding=<encoding>
       The <encoding> to write the tag file in. Defaults to UTF-8 if --input-encoding
       is specified, otherwise no conversion is performed.

Language Selection and Mapping Options
  --language-force=(<language>|auto)
       Force all files to be interpreted using specified <language>.
  --languages=[+|-](<list>|all)
       Restrict files scanned for tags to those mapped to languages
       specified in the comma-separated <list>. The list can contain any
       built-in or user-defined language [all].
  --alias-<LANG>=[+|-](<pattern>|default)
       Add a <pattern> detecting a name, can be used as an alternative name
       for <LANG>.
  --guess-language-eagerly
       Guess the language of input file more eagerly
       (but taking longer time for guessing):
       o shebang, even if the input file is not executable,
       o emacs mode specification at the beginning and end of input file, and
       o vim syntax specification at the end of input file.
  -G   Equivalent to --guess-language-eagerly.
  --langmap=<map>[,<map>[...]]
       Override default mapping of language to input file extension.
       e.g. --langmap=c:.c.x,java:+.j,make:([Mm]akefile).mak
  --map-<LANG>=[+|-]<extension>|<pattern>
       Set, add(+) or remove(-) the map for <LANG>.
       Unlike --langmap, this doesn't take a list; only one file name <pattern>
       or one file <extension> can be specified at once.
       Unlike --langmap the change with this option affects mapping of <LANG> only.

Tags File Contents Options
  --excmd=(number|pattern|mix|combine)
       Uses the specified type of EX command to locate tags [mix].
  -n   Equivalent to --excmd=number.
  -N   Equivalent to --excmd=pattern.
  --extras=[+|-][<flags>|*]
       Include extra tag entries for selected information (<flags>: "fFgpqrs") [F].
  --extras-(<LANG>|all)=[+|-][<flags>|*]
       Include <LANG> own extra tag entries for selected information
       (<flags>: see the output of --list-extras=<LANG> option).
  --fields=[+|-][<flags>|*]
       Include selected extension fields (<flags>: "aCeEfFikKlmnNpPrRsStxzZ") [fks].
  --fields-(<LANG>|all)=[+|-][<flags>|*]
       Include selected <LANG> own extension fields
       (<flags>: see the output of --list-fields=<LANG> option).
  --kinds-(<LANG>|all)=[+|-](<kinds>|*)
       Enable/disable tag <kinds> for language <LANG>.
  --pattern-length-limit=<N>
      Cutoff patterns of tag entries after <N> characters. Disable by setting to 0. [96]
  --pseudo-tags=[+|-](<pseudo-tag>|*)
       Enable/disable emitting pseudo tag named <pseudo-tag>.
       if '*' is given, enable emitting all pseudo tags.
  --put-field-prefix
       Put "UCTAGS" as prefix for the name of fields newly introduced in
       universal-ctags.
  --roles-(<LANG>|all).(<kind>|*)=[+|-][<roles>|*]
       Enable/disable tag roles for kinds of language <LANG>.
  --tag-relative=(yes|no|always|never)
       Should paths be relative to location of tag file [no; yes when -e]?
       always: be relative even if input files are passed in with absolute paths
       never:  be absolute even if input files are passed in with relative paths
  -B   Use backward searching patterns (?...?).
  -F   Use forward searching patterns (/.../; default).

Option File Options
  --options=<pathname>
       Specify file (or directory) <pathname> from which command line options should be read.
  --options-maybe=<pathname>
       Do the same as --options but this doesn't make an error for non-existing file.
  --optlib-dir=[+]<directory>
       Add or set <directory> to optlib search path.

optlib Options
  --kinddef-<LANG>=<letter>,<name>,<description>
       Define new kind for <LANG>.
  --langdef=<name>
       Define a new language to be parsed with regular expressions.
  --mline-regex-<LANG>=/<line_pattern>/<name_pattern>/<kind-spec>/[<flags>]
       Define multiline regular expression for locating tags in specific language.
  --regex-<LANG>=/<line_pattern>/<name_pattern>/<kind-spec>/[<flags>]
       Define single-line regular expression for locating tags in specific language.

Language Specific Options
  --if0[=(yes|no)]
       Should code within #if 0 conditional branches be parsed [no]?
  --line-directives[=(yes|no)]
       Should '#line' directives be processed [no]?
  -D <macro>=<definition>
       (CPreProcessor) Give <definition> for <macro>.
  -h (<list>|default)
       Specify a <list> of file extensions to be treated as include files
       [".h.H.hh.hpp.hxx.h++.inc.def"].
  -I [+|-]<list>|@<file>
       A <list> of tokens to be specially handled is read from either the
       command line or the specified <file>.
  --param-<LANG>.<name>=<argument>
       Set <LANG> specific parameter. Available parameters can be listed with --list-params.

Listing Options
  --list-aliases[=(<language>|all)]
       Output list of alias patterns.
  --list-excludes
       Output list of exclude patterns for excluding files/directories.
  --list-extras[=(<language>|all)]
       Output list of extra tag flags.
  --list-features
       Output list of compiled features.
  --list-fields[=(<language>|all)]
       Output list of fields.
  --list-kinds[=(<language>|all)]
       Output a list of all tag kinds for specified <language> or all.
  --list-kinds-full[=(<language>|all)]
       List the details of all tag kinds for specified <language> or all
       For each line, associated language name is printed when "all" is
       specified as language.
  --list-languages
       Output list of supported languages.
  --list-map-extensions[=(<language>|all)]
       Output list of language extensions in mapping.
  --list-map-patterns[=(<language>|all)]
       Output list of language patterns in mapping.
  --list-maps[=(<language>|all)]
       Output list of language mappings (both extensions and patterns).
  --list-mline-regex-flags
       Output list of flags which can be used in a multiline regex parser definition.
  --list-params[=(<language>|all)]
       Output list of language parameters. This works with --machinable.
  --list-pseudo-tags
       Output list of pseudo tags.
  --list-regex-flags
       Output list of flags which can be used in a regex parser definition.
  --list-roles[=(<language>|all)[.(<kindspecs>|*)]]
       Output list of all roles of tag kind(s) specified for <language>.
       Both letters and names can be used in <kindspecs>.
       e.g. --list-roles=C.{header}d
  --list-subparsers[=(<baselang>|all)]
       Output list of subparsers for the base language.
  --machinable[=(yes|no)]
       Use tab separated representation in --list-* option output. [no]
       --list-{aliases,extras,features,fields,kind-full,langdef-flags,params,
       pseudo-tags,regex-flags,roles,subparsers} support this option.
       Suitable for scripting. Specify before --list-* option.
  --with-list-header[=(yes|no)]
       Prepend the column descriptions in --list- output. [yes]
       --list-{aliases,extras,features,fields,kind-full,langdef-flags,params,
       pseudo-tags,regex-flags,roles,subparsers} support this option.
       Specify before --list-* option.

Miscellaneous Options
  --help
       Print this option summary.
  -?   Print this option summary.
  --help-full
       Print this option summary including experimental features.
  --license
       Print details of software license.
  --print-language
       Don't make tags file but just print the guessed language name for
       input file.
  --quiet[=(yes|no)]
       Don't print NOTICE class messages [no].
  --totals[=(yes|no|extra)]
       Print statistics about input and tag files [no].
  --verbose[=(yes|no)]
       Enable verbose messages describing actions on each input file.
  --version
       Print version identifier to standard output.
  -V   Equivalent to --verbose.

```




## Misc


CodeQuery

[devjoe/vim-codequery](https://github.com/devjoe/vim-codequery): Search + Browse + Understand your code more efficiently.






