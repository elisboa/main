#!/bin/bash -x

export GIT_WORK_TREE=/home/elisboa 
export GIT_DIR=/home/elisboa/.tmgit/.git 

hub api -XPATCH repos/elisboa/$(git remote -v | grep push | cut -d\/ -f5 | cut -d\  -f1 | sed 's/.git//g') -f default_branch=$(git symbolic-ref --short HEAD) >& /tmp/hub_api.log
