#!/bin/bash
pushd $HOME/Work/badoo/
git tag | xargs git tag -d; git branch -a | grep -Eo "origin/build_.*" | xargs git branch -rd
git remote prune origin
git prune
git gc --aggressive
popd
echo "Cleaning completed at `date`"

pushd $HOME/Work/badoo.git/
git tag | xargs git tag -d; git branch -a | grep -Eo "origin/build_.*" | xargs git branch -rd
git remote prune origin
git prune
git gc --aggressive
popd
echo "Cleaning completed at `date`"

pushd $HOME
git tag | xargs git tag -d; git branch -a | grep -Eo "origin/build_.*" | xargs git branch -rd
git remote prune origin
git prune
git gc --aggressive
popd
