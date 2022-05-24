#!/bin/bash -ex
VERSION=7.2
REVISION=1

wget http://deb.debian.org/debian/pool/main/s/smartmontools/smartmontools_$VERSION-$REVISION.debian.tar.xz
tar xf smartmontools_$VERSION-$REVISION.debian.tar.xz
rm smartmontools_$VERSION-$REVISION.debian.tar.xz

wget http://deb.debian.org/debian/pool/main/s/smartmontools/smartmontools_$VERSION.orig.tar.xz
tar xf smartmontools_$VERSION.orig.tar.xz --strip 1
rm smartmontools_$VERSION.orig.tar.xz

cp extend-timeout.patch debian/patches
echo 'extend-timeout.patch' >> debian/patches/series

echo -e "$(cat changelog)\n\n$(cat debian/changelog)" > debian/changelog
