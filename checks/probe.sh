#!/bin/sh
# The upload form refuses a text file (the extension and magic number checks run).
printf 'probe\n' | curl -fsS --max-time 10 -F 'userfile=@-;filename=probe.txt' -F submit=1 http://php/index.php | grep -q 'Invalid Image file'
