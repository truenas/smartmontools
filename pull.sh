#!/bin/bash -ex
VERSION=7.4
REVISION=2

wget http://deb.debian.org/debian/pool/main/s/smartmontools/smartmontools_$VERSION-$REVISION.debian.tar.xz
tar xf smartmontools_$VERSION-$REVISION.debian.tar.xz
rm smartmontools_$VERSION-$REVISION.debian.tar.xz

wget http://deb.debian.org/debian/pool/main/s/smartmontools/smartmontools_$VERSION.orig.tar.xz
tar xf smartmontools_$VERSION.orig.tar.xz --strip 1
rm smartmontools_$VERSION.orig.tar.xz

cp NAS-131181.patch debian/patches
cp NAS-131327.patch debian/patches
echo 'NAS-131181.patch' >> debian/patches/series
echo 'NAS-131327.patch' >> debian/patches/series

cat changelog debian/changelog > temp_changelog
mv -f temp_changelog debian/changelog
