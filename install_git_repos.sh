#!/bin/sh

echo "Bootstrap git-repos"
git clone https://github.com/bitterfox/gitrepos.git /tmp/gitrepos

echo "Initialize git-repos"
/tmp/gitrepos/git-repos clone https://github.com/bitterfox/gitrepos.git

echo "Rewrite remote to SSH"
git -C "`/tmp/gitrepos/git-repos root`/github.com/bitterfox/gitrepos" remote -v
git -C "`/tmp/gitrepos/git-repos root`/github.com/bitterfox/gitrepos" remote set-url origin git@github.com:bitterfox/gitrepos.git
git -C "`/tmp/gitrepos/git-repos root`/github.com/bitterfox/gitrepos" remote -v
