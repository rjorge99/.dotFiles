#!/usr/bin/env bash

lenguages=$(echo "typescript javascipt" | tr ' ' '\n')
core_utils=$(echo "find xargs sed awk" | tr ' ' '\n')
selected=$(echo  -e "$lenguages\n$core_utils" | fzf)

read -p "Query: " query

if echo "$lenguages" | grep -qs "$selected"; then
    query=`echo $query | tr " " "+"`
        tmux neww bash -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux neww bash -c "curl -s cht.sh/$selected~$query | less"
fi
