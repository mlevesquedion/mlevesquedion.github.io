#!/bin/bash

for file in pages/*.md; do
  filename=$(basename "$file")
  pandoc "$file" -o "_build/${filename%.*}.html"
done

pandoc 'index.md' -o 'index.html'

