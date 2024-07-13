#!/usr/bin/env bash

main() {
  # Clear terminal before the script.
  clear

  echo "Please select the file from the list"

  # Set files variable
  files=$(ls docs | sed -e 's/\.md$//')
  i=1

  for j in $files; do
    echo "$i) $j"
    file[i]=$j
    i=$((i + 1))
  done

  echo "0) Exit"

  # Read the input
  read -p "Enter number: " input
  if [ "$input" == "0" ]; then
    exit 0
  fi

  # Open the file.
  less docs/${file[$input]}.md
  main
}

main
