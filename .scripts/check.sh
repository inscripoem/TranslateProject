#!/bin/bash

# Install yq if necessary
# sudo snap install yq

# Get list of markdown files changed in the PR
git diff --name-only HEAD^ HEAD

exit 0

# Loop through the files and check the frontmatter
for file in $FILES; do
  echo "Checking frontmatter of $file"
  
  # Use yq to parse the frontmatter and perform your checks
  # Example: yq e '.title' $file
  
  # Add your conditions for what constitutes a valid frontmatter
  
  # If check fails, exit with non-zero status to fail the workflow
  # exit 1
done

# If all checks pass, exit with a zero status
exit 0