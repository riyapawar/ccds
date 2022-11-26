#!/bin/bash

set -e

remoteUser=("ltkhang" "nttdots" "samvid25" "AlphaDelta")
remoteDir=("sdn-ids-ddos-defense" "go-dots" "ARP-Spoofing-Detection-and-Prevention" "Secure-Desktop")
localCodeDir="${HOME}/CODE/"

# for each repo found remotely, check if it exists locally
# assumption: name repo = repo.git, to be saved to repo (w/o .git)
# if dir exists, skip, if not, clone the remote git repo into it
 	cloneCmd="git clone github.com://ltkhang/sdn-ids-ddos-defense"
	cloneCmd=$cloneCmd"ltkhang $localRepoDir"
	cloneCmdRun=$($cloneCmd 2>&1)
	printf -e "Running: \n$ $cloneCmd"
	printf -e "${cloneCmdRun}\n\n"
