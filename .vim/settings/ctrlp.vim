" Show hidden files in CTRL-P completion
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore = {
  \ 'file': '\v\.(o|d|dd)$',
  \ }
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  "let g:ctrlp_user_command = '/opt/bb/bin/ag %s --files-with-matches -l --nocolor'
endif

