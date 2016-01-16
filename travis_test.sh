#!/bin/bash
for f in $(find ./ -name '*.txt' -or -name '*.lex' -or -name '*.md'); do
   cat $f | aspell --lang=en list | aspell --lang=es list |  sort -u; echo $f;
done
