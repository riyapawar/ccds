#!/bin/bash

set -e
array=("https://github.com/ltkhang/sdn-ids-ddos-defense.git" "https://github.com/nttdots/go-dots.git" "https://github.com/samvid25/ARP-Spoofing-Detection-and-Prevention.git" "https://github.com/AlphaDelta/Secure-Desktop.git")

mkdir -p ~/git && cd ~/git

for x in ${array[@]}
do
  echo "cloning $x"
  git clone $x
done
