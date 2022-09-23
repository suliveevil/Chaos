#!/bin/bash

# find_orphaned_obsidian_links.sh
# Written by Marcmagn1, October 2020

# Requirements:

# Mac (I guess it’d work on Linux and Windows with some minor adaptation)
# gfind (installed with brew)
# Script adaptation for your setup:

# Replace gfind_path by the path where it installed (can be found by typing which gfind in the terminal)
# Replace VAULT_PATH by the path to your obsidian vault
# How to use?

# Save the script somewhere on your disk with the extension .sh
# Make executable by opening a terminal in this folder and running chmod +x PATH_TO_SCRIPT
# Run from the terminal by putting the path to the script and pressing enter


# Step 1 
gfind_path VAULT_PATH -name '*.md' -type f -printf "%f\n" | sort -u| sed "s/\.md//" | tee VAULT_PATH/notes_list.txt > /dev/null

# Step 2)
grep -roiIEh "\[\[([a-zA-Z0-9 ]*)\]\]" VAULT_PATH | sort -u | sed "s/\]]//" | sed 's/\[\[//' | tee VAULT_PATH/links_list.txt > /dev/null

# Step 3)
grep -Fxv -f VAULT_PATH/notes_list.txt VAULT_PATH/links_list.txt | sed 's/^/[[/' | sed 's/$/]]/