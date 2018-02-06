#!/bin/bash

BUILD_DIR="phpstorm"

chmod u+rwx $BUILD_DIR
chmod go-w -R $BUILD_DIR

chmod a+r -R $BUILD_DIR

find $BUILD_DIR -type d -exec chmod a+x {} \;
chmod a+x $BUILD_DIR/DEBIAN/p*

dpkg-deb --build $BUILD_DIR phpstorm_2017.3.4.deb

# vim: filetype=sh:
