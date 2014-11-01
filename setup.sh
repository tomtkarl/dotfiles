 for df in \
	.bash_profile \
	 .bashrc \
	.gitconfig \
	.gitignore \
	.screenrc \
	.vim \
	.vimrc \
	.Xresources 
do 
	echo "Linking ${df}"
	if [[ -f ~/${df} ]] 
	then
		echo "Backing up existing ~/${df}"
		mv ~/${df} ~/${df}.bak
	fi
	ln -s ~/.dotfiles/${df} ~/${df}
done

