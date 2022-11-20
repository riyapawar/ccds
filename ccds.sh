#!/bin/bash

set -e

remoteUser=("ltkhang" "nttdots" "samvid25" "AlphaDelta")
remoteDir=("sdn-ids-ddos-defense" "go-dots" "ARP-Spoofing-Detection-and-Prevention" "Secure-Desktop")
remoteRepos=$(ssh -l $remoteUser $remoteHost "ls $remoteDir")
localCodeDir="${HOME}/CODE/"

# for each repo found remotely, check if it exists locally
# assumption: name repo = repo.git, to be saved to repo (w/o .git)
# if dir exists, skip, if not, clone the remote git repo into it
for i in ${!remoteUser[@]}; do
  localRepoDir=$(echo ${localCodeDir}${remoteuser[$i]}|cut -d'.' -f1)
	if [ -d $localRepoDir ]; then 	
		echo -e "Directory $localRepoDir already exits, skipping ...\n"
	else
		cloneCmd="git clone github.com://$remoteUser[$i]/$remoteDir[$i]"
		cloneCmd=$cloneCmd"$remoteUser[$i] $localRepoDir"
		cloneCmdRun=$($cloneCmd 2>&1)
		echo -e "Running: \n$ $cloneCmd"
		echo -e "${cloneCmdRun}\n\n"
fi
done
