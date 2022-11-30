#!/bin/bash

for word in $(cat $1) do
	resp = $(curl -s -H "User-Agent: BadTool" -o /dev/null -w "%{http_code}" $2/$word)

	if[$resp == 200] then
	echo "diretorio encontrado : $argv[2]/$word"
	fi
done
