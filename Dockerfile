# Copyright (c) 2016 Kaito Udagawa
# Copyright (c) 2016-2020 3846masa
# Copyright (c) 2021- ikubaku
# Released under the MIT license
# https://opensource.org/licenses/MIT

FROM archlinux/archlinux:latest

ENV PATH /usr/local/texlive/2021/bin/x86_64-linux:$PATH

RUN pacman -Sy --noconfirm && \
	pacman -S --noconfirm --needed perl cairo pixman graphite t1lib gd poppler \
	libsigsegv zziplib libpng libjpeg freetype2 libxcrypt icu harfbuzz harfbuzz-icu \
	gmp mpfr potrace libpaper libsynctex wget

WORKDIR /tmp/install-tl-unx
COPY texlive.profile ./
RUN curl -fsSL ftp://tug.org/historic/systems/texlive/2021/install-tl-unx.tar.gz | \
      tar -xz --strip-components=1 && \
    ./install-tl --profile=texlive.profile && \
    tlmgr install \
      collection-latexextra \
      collection-fontsrecommended \
      collection-langjapanese \
      latexmk

RUN pacman -Rs --noconfirm wget

WORKDIR /workdir
RUN rm -fr /tmp/install-tl-unx

CMD ["sh"]
