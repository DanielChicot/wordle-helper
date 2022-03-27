#!/usr/bin/env fish

set guess $argv[1]
set correct '^'(echo $guess | sed -e 's/[a-z]/./g')'$'
set others '['(echo $guess | sed 's/[.A-Z]//g')']'
set misses '['$argv[2]']'
egrep -i $correct /usr/share/dict/words | egrep -i $others | egrep -v $misses
