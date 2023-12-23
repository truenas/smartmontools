#!/bin/bash -ex
VERSION=7.4
REVISION=2

wget http://deb.debian.org/debian/pool/main/s/smartmontools/smartmontools_$VERSION-$REVISION.debian.tar.xz
tar xf smartmontools_$VERSION-$REVISION.debian.tar.xz
rm smartmontools_$VERSION-$REVISION.debian.tar.xz

wget http://deb.debian.org/debian/pool/main/s/smartmontools/smartmontools_$VERSION.orig.tar.xz
tar xf smartmontools_$VERSION.orig.tar.xz --strip 1
rm smartmontools_$VERSION.orig.tar.xz
