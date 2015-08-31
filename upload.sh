#!/bin/bash

LUA_FILES=*.lua
HTTP_FILES=http/*
LUATOOL=./luatool.py

echo Wiping...
$LUATOOL -w

for f in $LUA_FILES $HTTP_FILES; do
	if [[ ${f: -4} == ".lua" && $f != "init.lua" ]]; then
		$LUATOOL -c -f $f -t $f
	else
		$LUATOOL -f $f -t $f
        fi
done

$LUATOOL -l
