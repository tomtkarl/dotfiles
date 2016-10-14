# Begin ~/.bash_profile
# Personal aliases and functions should go in ~/.bashrc.  System wide
# environment variables and startup programs are in /etc/profile.
# System wide aliases and functions are in /etc/bashrc.
prepend () {
  # First remove the directory
  local IFS=':'
  local NEWPATH
  for DIR in $PATH; do
     if [ "$DIR" != "$1" ]; then
       NEWPATH=${NEWPATH:+$NEWPATH:}$DIR
     fi
  done

  # Then prepend the directory
  export PATH=$1:$NEWPATH
}

append () {
  # First remove the directory
  local IFS=':'
  local NEWPATH
  for DIR in $PATH; do
     if [ "$DIR" != "$1" ]; then
       NEWPATH=${NEWPATH:+$NEWPATH:}$DIR
     fi
  done

  # Then append the directory
  export PATH=$NEWPATH:$1
}

if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
  prepend $HOME/bin
fi

unset append

if [[ -n "$SSHCDPATH" ]]
then
    cd $SSHCDPATH
    unset SSHCDPATH
fi
xrdb -merge ~/.Xresources

if [[ -e ".bash_profile.local" ]]
then
    source .bash_profile.local
fi

# End ~/.bash_profile
