#!/bin/sh

TEMP_GITREPOS=/tmp/gitrepos

gr() {
    if [ ! -d "/tmp/gitrepos" ]; then
        echo "Bootstrap git-repos"
        git clone https://github.com/bitterfox/gitrepos.git $TEMP_GITREPOS
    fi
    $TEMP_GITREPOS/git-repos $@
}

gr_clone() {
    domain="$1"
    user="$2"
    repository="$3"

    if [ ! -d "`gr root`/$domain/$user/$repository" ]; then
        echo "Cloning $domain/$user/$repository"
        gr clone https://$domain/$user/$repository.git

        echo "Rewrite remote to SSH"
        git -C "`/tmp/gitrepos/git-repos root`/$domain/$user/$repository" remote -v
        git -C "`/tmp/gitrepos/git-repos root`/$domain/$user/$repository" remote set-url origin git@$domain:$user/$repository.git
        git -C "`/tmp/gitrepos/git-repos root`/$domain/$user/$repository" remote -v
    fi
}

gr_clone github.com bitterfox gitrepos
