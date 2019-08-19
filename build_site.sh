#!/bin/bash

INDEX="index.md"

touch "$INDEX"
sed -i -n G "$INDEX"

echo "# My blog" >> "$INDEX"

uppercase_first() {
  name_to_uppercase="$1"
  echo "$(tr '[:lower:]' '[:upper:]' <<< "${name_to_uppercase:0:1}")${name_to_uppercase:1}"
}

for file in pages/*md; do
  filename=$(basename "$file")
  filename_noext="${filename%.*}"
  title="$(uppercase_first "$filename_noext")"
  html_filename="$filename_noext.html"
  html_filepath="_build/$html_filename"
  echo "* [$title]($html_filepath)" >> "$INDEX"
  pandoc "$file" -o "$html_filepath"
done

pandoc 'index.md' -o 'index.html'

