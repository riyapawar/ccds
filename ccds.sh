#!/bin/bash

set -e

remoteUser=("ltkhang" "nttdots" "samvid25" "AlphaDelta")
remoteDir=("dn-ids-ddos-defense" "nttdots" "samvid25" "AlphaDelta")
localCodeDir="${HOME}/CODE/"

# for each repo found remotely, check if it exists locally
# assumption: name repo = repo.git, to be saved to repo (w/o .git)
# if dir exists, skip, if not, clone the remote git repo into it
for i in ${!remoteUser[@]}; do
  localRepoDir=$(echo ${localCodeDir}${remoteuser[$i]}|cut -d'.' -f1)
	if [ -d $localRepoDir ]; then 	
		echo -e "Directory $localRepoDir already exits, skipping ...\n"
	else
		cloneCmd="git clone https://github.com/$remoteUser[$i]/$remoteDir[$i].git"
		cloneCmd=$cloneCmd"$remoteUser[$i] $localRepoDir"
		cloneCmdRun=$($cloneCmd 2>&1)
		echo -e "Running: \n$ $cloneCmd"
		echo -e "${cloneCmdRun}\n\n"
fi
done
