if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif

let g:undotree_WindowLayout = 2 "undotree left, text right, diff bottom
let g:undotree_DiffCommand = "diff -u"
let g:undotree_SplitWidth = 40
nnoremap  <F5> :UndotreeToggle<CR>
