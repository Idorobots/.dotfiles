#! /bin/bash
# Autopull script for git.

PCNAME="PiWL"
SYNCREPOFILE=$HOME"/.syncrepos"

for repo in $(cat $SYNCREPOFILE)
do
	echo "Pulling [0;32m$repo[0m..."
	cd $repo
	git commit -a -m"$PCNAME `date`"
	git pull origin master
	echo "done!"
done
