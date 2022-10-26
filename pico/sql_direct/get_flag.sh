#!/bin/zsh
source ~/.zshrc
export PGPASSWORD=postgres; echo "SELECT * FROM flags
\g" | psql -h saturn.picoctf.net -p $1 -U postgres pico | picogrep
