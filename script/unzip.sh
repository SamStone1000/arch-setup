#!/bin/bash
TMPFILE=`mktemp`
PWD=`pwd`
wget "$1" -O $TMPFILE
unzip -d $PWD $TMPFILE
rm $TMPFILE
