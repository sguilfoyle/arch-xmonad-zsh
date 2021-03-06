#!/bin/sh

yaourt -S openssh chromium rsync jdk7-openjdk apache-ant maven lftp unzip unrar tree \
	subversion alsa-utils flashplugin ntp ranger chromium-libpdf \
	ack glances aspell aspell-en ispell bc colordiff colorsvn fasd \
	dmidecode elinks htop iftop lesspipe highlight mpd ncdu ncmpcpp feh \
	hwinfo pydf atool libcaca rtorrent dzen2 emacs mplayer tcl tk lnav \
	ntfs-3g cloc zathura zathura-pdf-poppler dtrx dosfstools ntfsprogs ctags \
    gvim fzf-git cabal the_silver_searcher

mkdir -p ~/.config/ranger
ranger --copy-config=scope

sudo mkdir -p /root/.config/ranger
sudo ranger --copy-config=scope

cabal update
cabal install cabal-install
cabal install happy
cabal install haskell-awk

wget http://albertlatacz.published.s3.amazonaws.com/javarepl/javarepl.jar \
    -r -O ~/bin/javarepl.jar
