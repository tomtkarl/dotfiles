" This configuration file was tested with
" /usr/local/bin/vim (7.0) and
" /usr/local/bin/gvim (7.0)
"this line prevents copydotfiles from recopying: dot-vimrc_included

" ================================================================
"" Basic Config
" ================================================================
set backupdir=~/.vim/tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,/var/tmp,/tmp

let mapleader=","
inoremap jj <Esc>

" map <ctrl>+F12 to generate ctags for current folder:
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

" ================================================================
"" General
" ================================================================
set backspace=indent,eol,start
set foldcolumn=2 " foldcolumn is width 2
set foldmethod=indent " use indent folding for speed
set foldnestmax=10 " max 10 folding levels
set foldminlines=4 " min 4 lines to create a fold
set scrolloff=4 " begin scrolling 4 lines from window edge
set wildmenu " use wildmenu
"wildmenu ignore list
set wildignore=*.o,*.obj,*.bak,*.exe,*.tsk,*.d,*.dd
" complete to longest common string
set wildmode=longest:full

set ttyfast "tf "smooths redraw by using more bandwidth
set sessionoptions-=options
set formatoptions-=o " don't autoformat on 'o' e.g. comment wrapping
"show shortmessages
set shortmess+=atIW
" Set timeout for detecting command key sequence
set timeoutlen=400
"remember more history
set history=1000

"set autoread "update file modified outside of vim

" ================================================================
"" Display
" ================================================================
set number "nu " print line numbers
syntax enable
set textwidth=160 "tw " text width
set nowrap " wrap text at window edge without modifying buffer
set linebreak " break at a suitable character (as in breakat)
set t_Co=16
set background=dark
colorscheme solarized
highlight DiffAdd cterm=none ctermfg=Black ctermbg=Green gui=none guifg=Black guibg=Green
highlight DiffDelete cterm=none ctermfg=Black ctermbg=Red gui=none guifg=Black guibg=Red
highlight DiffChange cterm=none ctermfg=Black ctermbg=Yellow gui=none guifg=Black guibg=Yellow
highlight DiffText cterm=none ctermfg=Black ctermbg=Magenta gui=none guifg=Black guibg=Magenta
" Display tabs and trailing spaces visually
set list
set listchars=tab:>-,trail:·

if has("gui_running")
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 12
    set guioptions-=m
    set guioptions-=T
endif

" start with all folds open
au BufRead,BufNewFile,BufWinEnter * normal zR
" set filetype for csc2 files
au BufRead,BufNewFile,BufWinEnter *.csc2 set filetype=csc2
" highlight line segments running over 80 columns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"apply highlight when opening a file, changing text (N or I), or opening a split
au BufRead,InsertCharPre * 2mat OverLength /\%160v.\+/
" highlight lone colon characters
highlight WarnChar ctermbg=yellow ctermfg=red guibg=#FFCC33 guifg=#FF0000
"apply highlight when opening a file, changing text (N or I), or opening a split
au BufRead,InsertCharPre *.cpp 2mat WarnChar /\w\+;\?:;\?\w\+/


" ================================================================
"" Searching
" ================================================================
"set ignorecase "ic " ignore case in search
set noic "don't ignore case in search!
"set smartcase "scs " don't ignore case if key includes a capital
set incsearch " begin showing matches whilst typing search pattern

" ================================================================
"" Formatting
" ================================================================
set expandtab "et " use spaces instead of tabs
set cindent "cin " indent c style
set tabstop=4 "ts " tabstop counts for 4 chars
set shiftwidth=4 "sw " spaces to use in autoindent step
"set smarttab "insert and delete tab's worth of spaces on blank lines

set cino+=N-s " do not indent after namespace XX{
set cino+=(0 " match open-bracket indentation when breaking parameter lists over multiple lines
set autoindent "ai "copy indent when starting new line

set fo+=ro "format options
set comments-=:// "do not auto insert single line comments
set comments+=f:// " do auto insert multi-line comment continuations

" ================================================================
"" Mappings
" ================================================================
nnoremap <Space> viw

" Ctrl-\ to open tag in new tab
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" Alt-] to open tag in vertical split
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" change paste
nmap <silent> cp "_cw<C-R>"<Esc>

"Remap <C-e> and <C-y> to shift the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"swap ' and `
"this way the easier-to-reach key jump to file AND line set by mark (ma)
nnoremap ' `
nnoremap ` '
" map for getting rid of search highlighting
"nnoremap <silent> <Leader>n :silent :nohlsearch<CR>
" quick :wa map
noremap <Leader>wa :wa<CR>
" quick :wq map
noremap <Leader>wq :wq<CR>
"quick :w map
noremap <Leader>w :w<CR>

" ================================================================
"" autocmds
" ================================================================
" Remove trailing whitespace on save
"autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif


" ================================================================
"" Local vim configuration
" ================================================================
if filereadable(expand("~/.vimrc.local"))
    so ~/.vimrc.local
endif
" ================================================================
"" Plugins
" ================================================================
" Enable :Man
runtime ftplugin/man.vim
"enable % to match if, else, xml, etc.
runtime macros/matchit.vim

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif


" ================ Custom Settings ========================
so ~/.vim/settings.vim
