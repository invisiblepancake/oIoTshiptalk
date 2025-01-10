#!/bin/bash

# Read titles from JSON
titles=$(jq -r '.titles[]' titles.json)
titles_array=($titles)

# Read YAML settings
default_member=$(yq '.default_member' config.yml)
prefix=$(yq '.title_prefix' config.yml)
suffix=$(yq '.title_suffix' config.yml)

# Randomly select a title
random_title=${titles_array[$RANDOM % ${#titles_array[@]}]}

# Add prefix and suffix
final_title="$prefix $random_title $suffix"

# Print the title with member name
echo "$default_member's Random Title: $final_title"
