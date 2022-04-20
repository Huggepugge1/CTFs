#!/bin/bash

print_usage() {
	echo "Usage: challenge dir-name [options]"
	echo "use -h for help"
}

print_help() {
	echo "Creates new challenge."
	echo "Args:"
	echo "-h: Display this message"
	echo "-r <arg>: Add header to file"
	echo "-l <arg>: Add link to challenge"
}

while getopts 'hm:r:l:' flag; do
  case "${flag}" in
    h) print_help ;; 
    m) mkdir "${OPTARG}"
       cd "${OPTARG}"
       touch README.md ;;
    r) echo "# ${OPTARG}" >> README.md ;;
    l) echo "" >> README.md
       echo "Link: ${OPTARG}" >> README.md ;;
    *) print_usage ;;
  esac
done
