#!/bin/bash
#My third script - helloworldugly.#!/bin/sh
#diplays the string "Hello World!"
echo -n "hello world"
  sed -e "s/b/o/g" -e "s/ol/orl" |
  tr "h" "H"|
  tr "w" "W"|
  awk '{print $1 "\x20" $2 "\41"}'
bc <<< "(($$ * 4 - 24)/2 + 12)/2" |
  sed 's/^/I am process # /'
