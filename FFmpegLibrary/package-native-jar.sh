# for Mac OS X
# /bin/bash

# Generate .jar from .so
jarRoot="lib"

shopt -s nullglob
mkdir $jarRoot
for dir in obj/*
do 
	cp -r $dir "$jarRoot/$(basename $dir)"
done

jarPath="native.jar"
echo "zip -r -X" $jarPath " " $jarRoot
dirName=`basename $dir`
zip -r -X $jarPath ./lib
