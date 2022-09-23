#!/usr/bin/env bash
# Remove any note not linked

archive=${OBSIDIAN_ARCHIVE:-$HOME/Dropbox/Sync/Obsidian/Muninn}
orphaned=orphaned
ext=md
include_empty=true # remove value for false
noisy= # remove for false

# Include all notes not in journal that are either empty or have the #placeholder tag
candidate_criteria="--exclude-dir 'journal' -e '#placeholder'"

# Include all notes with no non-blank lines not starting in #
inverted_criteria="--exclude-dir 'journal' -e '^[^#]'"

status=0
linktmp=$(mktemp)

cd "$archive"

# this is one long pipeline
grep --exclude-dir '.obsidian' -orh '\[\[[^]]*]]' . |  # get all links with brackets
grep -oh '[^][]\{1,\}' | # remove the brackets
while read -r link
do
    link=${link##*/} # remove any parent directories
    link=${link%%|*} # remove the alias
    link=$(echo $link | sed 's/^ *//;s/ $//') # trim
    echo "'${link,,}'" # make lowercase and requote
done |
sort | uniq > "$linktmp" # make unique

get_files() {
    # all note files, along with criteria above
    [ "$candidate_criteria" ] && eval "grep $candidate_criteria --exclude-dir '$orphaned' --exclude-dir '.obsidian' --include '*.$ext' -rl ."

    # all note files not meeting inverted criteria above
    [ "$inverted_criteria" ] && eval "grep $inverted_criteria --exclude-dir '$orphaned' --exclude-dir '.obsidian' --include '*.$ext' -rL ."

    # all empty-length files from clickthroughs with no content
    [ "$include_empty" ] && find . -iname '*.'$ext'*' -not -ipath './.obsidian/*' -not -ipath "./$orphaned/*" -size 0
}

# now, for each note fitting the candidate criteria, also one long pipeline
get_files | sort | uniq | while read -r filename
do
    title="${filename%.$ext}" # remove extension
    title="${title##*/}" # remove any parent directories
    title="'${title,,}'" # make lowercase and requote
    [ "$noisy" ] && echo "Processing '$filename', reducing to title $title..."

    # if title is not in list
    if grep "$title" "$linktmp" > /dev/null
    then
        [ "$noisy" ] && echo "'$filename' is probably linked"
    else
        # can we move it?
        target="$archive/$orphaned/$(basename "$filename")"
        if [ ! -e "$target" ]
        then
            [ "$noisy" ] && echo
            echo "'$filename' is not linked. Moving into '$orphaned'..."
            mkdir -p "$archive/$orphaned"
            mv "$filename" "$target"
            [ "$noisy" ] && echo
        else
            status=1
            echo "'$filename' is not linked, but a file by that name is already in '$orphaned'"
        fi
    fi
done

# clean up
rm "$linktmp"

exit $status