#!/bin/bash

for i in 1 2 3 4 5
do
	page="$(curl http://blogoscoped.com/ideas/)"
	text=${page#<!DOC*idea\">}
	texo=${text%%</p>*html>}

	notify-send "$texo"
	echo "$texo" >> idealog.txt
done

