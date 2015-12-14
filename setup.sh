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
    .ackrc \
    .tmux.conf
do
	tput setaf 5; echo "Linking ${df}"; tput sgr0
	if [[ -e ~/${df} ]]
	then
		tput setaf 1; echo "Backing up existing ~/${df}"; tput sgr0
		mv ~/${df} ~/${df}.bak
	fi
	ln -s ~/.dotfiles/${df} ~/${df}
done
if [[ ! -d ~/.vim/bundle/Vundle.vim ]]; then \
    #clone vundle for vim
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
fi
