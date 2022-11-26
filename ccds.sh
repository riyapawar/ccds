#!/bin/bash

set -e
array=("https://github.com/ltkhang/sdn-ids-ddos-defense.git" "https://github.com/nttdots/go-dots.git" "https://github.com/samvid25/ARP-Spoofing-Detection-and-Prevention.git" "https://github.com/AlphaDelta/Secure-Desktop.git")

mkdir -p ~/git && cd ~/git

for element in ${array[@]}
do
  echo "cloning $element"
  git clone $element
done
# for each repo found remotely, check if it exists locally
# assumption: name repo = repo.git, to be saved to repo (w/o .git)
# if dir exists, skip, if not, clone the remote git repo into it
