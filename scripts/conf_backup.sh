#!/bin/bash -eu

# フルパスで書くこと、相対パスだとsymlinkが動かないことがある

cp $(TARGET_FILE) $(BACKUP_PATH)
ln -snb $(BACKUP_PATH) $(TARGET_FILE)