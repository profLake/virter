#!/bin/bash


##
##  start_review.sh <repo> <login> <make_target>
##


repo=$1
####login=$(echo $repo | cut -b 77- | rev | cut -b 59- | rev)
login=$2
make_target=$3



cd ~/reviews/
mkdir -p $login

cd $login
git clone $repo 2> /tmp/git-errors.sh

project_name=$(echo $repo | cut -b 48- | cut -b -6)
project_name="${project_name}-0"
cd $project_name
project=$(pwd)

cd ./src/
git checkout develop && bash ~/sandbox/checks.sh $project $make_target
