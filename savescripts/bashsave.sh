#!/bin/bash
nu=1
if [ $# -eq 1 ]
	then nu=$1
fi

printf "#!/bin/bash
shopt -s expand_aliases
source ~/.bashrc
$(history | cut -b 8- | tail -n$((nu+1)) | head -n$((nu)))" > get_flag.sh

chmod +x get_flag.sh
source ./get_flag.sh > flag.txt

printf "### Flag\nFlag: \`$(cat flag.txt)\`" >> README.md
