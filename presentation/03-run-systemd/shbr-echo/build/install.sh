#!/bin/bash
set -e

mkdir -p "$DESTDIR/usr/bin/"
mkdir -p "$DESTDIR/etc/systemd/system/"
mkdir -p "$DESTDIR/etc/shbr-echo/cpp"

cp /cpp/build_release/shbr_devops_cpp "$DESTDIR/usr/bin/shbr-echo"
cp -r /cpp/configs "$DESTDIR/etc/shbr-echo/cpp"

cp build-java/libs/java-0.0.1-SNAPSHOT.jar "$DESTDIR/usr/bin/shbr-echo.jar"

cp build-python/main.py "$DESTDIR/usr/bin/shbr-echo.py"

cp ../shbr-echo-java.service "$DESTDIR/etc/systemd/system/"
cp ../shbr-echo-python.service "$DESTDIR/etc/systemd/system/"
cp ../shbr-echo-cpp.service "$DESTDIR/etc/systemd/system/"
