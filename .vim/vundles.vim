" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle (required)
Bundle "VundleVim/Vundle.vim"

" Vundle Bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'mbbill/undotree'
Bundle 'airblade/vim-gitgutter'
Bundle 'terryma/vim-expand-region'
Bundle 'xterm-color-table.vim'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/a.vim'
Bundle 'vim-scripts/xml.vim'
Bundle 'vim-scripts/Mark'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'danro/rename.vim'
Bundle 'SirVer/ultisnips'

"Filetype plugin indent on is required by vundle
filetype plugin indent on
