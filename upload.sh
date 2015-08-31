#!/bin/bash

LUA_FILES=*.lua
HTTP_FILES=http/*
LUATOOL=./luatool.py

for f in $LUA_FILES $HTTP_FILES; do
	$LUATOOL -f $f -t ${f/\//_}
done
