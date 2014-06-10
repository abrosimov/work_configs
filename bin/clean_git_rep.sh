#!/bin/bash
pushd $HOME/Work/badoo/
git tag | xargs git tag -d; git branch -a | grep -Eo "origin/build_.*" | xargs git branch -rd
git remote prune origin
git prune
git gc --aggressive
$HOME/bin/www1d3Sync badoo
echo dsync | ssh kabrosimov@www1.d3
echo "touch /home/kabrosimov/test_by_cron" | ssh kabrosiov@www1.d3
popd
echo "Cleaning completed at `date`"
