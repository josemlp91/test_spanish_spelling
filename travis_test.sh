#!/bin/bash
for f in $(find ./ -name '*.txt' -or -name '*.lex' -or -name '*.txt'); do
   cat $f | aspell --lang=en list | aspell --lang=es list |  sort -u; if [ -n "$OUTPUT" ]; then echo $OUTPUT; exit 1; fi;
done
