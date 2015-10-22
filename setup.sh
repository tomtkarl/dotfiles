 for df in \
	.bash_profile \
	 .bashrc \
	.gitconfig \
	.gitignore \
	.screenrc \
	.vim \
	.vimrc \
	.Xresources \
    .inputrc \
    .ackrc
do
	echo "Linking ${df}"
	if [[ -f ~/${df} ]]
	then
		echo "Backing up existing ~/${df}"
		mv ~/${df} ~/${df}.bak
	fi
	ln -s ~/.dotfiles/${df} ~/${df}
done
if [[! -d ~/.vim/bundle/Vundle.vim ]]; then \
    #clone vundle for vim
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
fi
