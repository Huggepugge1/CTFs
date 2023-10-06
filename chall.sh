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

make_dir() {
    dir_name=$@
    mkdir $(printf "${dir_name// /_}" | tr '[:upper:]' '[:lower:]')
    cd $(printf "${dir_name// /_}" | tr '[:upper:]' '[:lower:]')
    touch README.md
    printf "# $@" >> README.md
}

while getopts 'hm:r:l:' flag; do
  case "${flag}" in
    h) print_help ;; 
    r) make_dir ${OPTARG} ;;
    l) printf "" >> README.md
       printf "Link: ${OPTARG}\n" >> README.md ;;
    *) print_usage ;;
  esac
done
