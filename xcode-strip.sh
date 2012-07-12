#!/bin/sh

# I stole this from http://www.wezm.net/technical/2011/08/strip-trailing-whitespace-xcode-4/
# Many thanks to Wesley Moore!

modified_files=`git ls-files --modified '*.[hm]'`
if [[ -n "$modified_files" ]]; then
  sed -i '.bak' 's/[[:space:]]*$//' "$modified_files"
fi