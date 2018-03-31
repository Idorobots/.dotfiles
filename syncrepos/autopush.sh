#! /bin/bash
# Autopush script for git.

PCNAME="PiWL"
SYNCREPOFILE=$HOME"/.syncrepos"

for repo in $(cat $SYNCREPOFILE)
do
	echo "Polling [0;32m$repo[0m..."
	cd $repo
	git commit -a -m"$PCNAME `date`"
	git push
	echo "done!"
done
