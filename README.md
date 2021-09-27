# ikubaku/arch-texlive-ja

<!--[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg)](https://github.com/RichardLitt/standard-readme)-->

> Minimal TeX Live image for Japanese based on Arch Linux

Forked from [Paperist/alpine-texlive-ja] \(under the MIT License\).

[Paperist/alpine-texlive-ja]: https://github.com/Paperist/alpine-texlive-ja

## Table of Contents

- [Build](#build)
- [Install](#install)
- [Usage](#usage)
- [Contribute](#contribute)
- [License](#license)

## Build
```shell
$ docker build -t arch-texlive-ja:latest .
```

## Install
TBD

## Usage

```bash
$ docker run --rm -it -v $PWD:/workdir arch-texlive-ja
$ latexmk -C main.tex && latexmk main.tex && latexmk -c main.tex
```

## Contribute

PRs accepted.

## License
This software is licensed under The MIT License. See [LICENSE] for more information.
