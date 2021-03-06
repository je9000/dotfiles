#!/bin/sh

set -u

echo " -- make_dotfiles_package.sh v1.3"

$(which whoami > /dev/null && which tar > /dev/null && which awk > /dev/null)
if [ $? != 0 ]; then
    echo "Error: failed to find required binary (whoami, tar, or awk)!"
    exit 1
fi

ME=$(whoami)

if [ -n "$HOME" -a -d "$HOME" ]; then
    MYHOMEDIR=$HOME
else
    if [ ! -r "/etc/passwd" ]; then
        echo "Error: /etc/password is unreadable!"
        exit 1
    fi

    MYHOMEDIR=$( awk -F: -v USER=$ME '{ re = "^" USER ":"; if ( $0 ~ re ) { print $6 } }' /etc/passwd)

    if [ -z "$ME" -o -z "$MYHOMEDIR" ]; then
        echo "Can't find your username or can't find your homedir. Aborting!"
        exit 1
    fi
fi

MYHOMEDIR=$(echo $MYHOMEDIR | sed 's/\/$//')

echo " -- Using homedir ($MYHOMEDIR) for current user ($ME)."

tar -cvzf dotfiles.tar.gz $(basename $0) -C $MYHOMEDIR .tcshrc .screenrc .vimrc .vim

echo " -- File $MYHOMEDIR/dotfiles.tar.gz written successfully!"
