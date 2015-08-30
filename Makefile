LUA_FILES = $(wildcard *.lua)
UPLOAD_FILES = $(patsubst %.lua,%.upload,$(LUA_FILES))

LUATOOL = ./luatool.py
.PHONY: all
%.upload: %.lua
	$(LUATOOL) -f $<

all: $(UPLOAD_FILES)
