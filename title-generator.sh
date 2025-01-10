#!/bin/bash

# Read titles from the JSON file
titles=$(jq -r '.titles[]' titles.json)

# Convert the titles into a bash array
titles_array=($titles)

# Randomly select a title
random_title=${titles_array[$RANDOM % ${#titles_array[@]}]}

# Print the title
echo "Your Random Title: $random_title"
