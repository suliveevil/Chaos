#!/usr/bin/env bash
# Create empty notes for anything linked

archive=${OBSIDIAN_ARCHIVE:-$HOME/Documents/GitHub/Obsidian}

ext=md
placeholder="#placeholder"

cd "$archive"

# note this is one long pipeline
grep --include '*.'$ext --exclude-dir '.obsidian' -orh '\[\[[^]]*]]' . |  # get all links with brackets
grep -oh '[^][]\{1,\}' | # remove the brackets
grep -oh '[^|]*' | # remove the aliases
sed 's/^ *//;s/ $//' | # trim spaces
sort | uniq | # make unique
while read -r file; # for each expected file
do
    if [[ "$file" == *../* ]]  # if it contains a parent ../ link in it anywhere we can't process it
    then
        echo "'[[$file]]' has a parent directory in its path and will not be processed"
    elif ! find . -ipath "*/$file.$ext*" | grep . > /dev/null # if it's not in the notes tree
    then
        echo "$file.$ext does not exist and is being created"
        echo "# ${file##*/}" > "$file.$ext" # create with an H1 placeholder of its own name
        echo "$placeholder" >> "$file.$ext" # add any custom placeholder text, plus an eol
    fi
done