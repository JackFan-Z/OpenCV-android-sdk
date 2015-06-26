#!/bin/bash
JAVA_PROJECT_DIR=./sdk/java
if [ -f $JAVA_PROJECT_DIR/local.properties ]
then
	echo 'local.properties exists'
else
	echo 'Try to copy local.properties from parent directory'
	cp -v ../local.properties $JAVA_PROJECT_DIR
fi

cd $JAVA_PROJECT_DIR
./gradlew assembleRelease
mv -v build/outputs/aar/java-release.aar build/outputs/aar/opencv-3-.aar