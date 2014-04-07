nnoremap <Leader>sc :SyntasticCheck<CR>
nnoremap <Leader>sr :SyntasticReset<CR>

let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_compiler_options = ' -I/bb/build/share/packages/refroot/amd64/r201310v00/bb/include/ -I/bb/build/share/packages/refroot/amd64/r201310v00/bb/include/stlport -I/bb/build/share/source/include/00depbuild/ -I/bb/build/share/source/include/00offlonly/ -I. -DBSL_OVERRIDES_STD '
let g:syntastic_c_compiler_options = ' -I/bb/build/share/packages/refroot/amd64/r201310v00/bb/include/ -I/bb/build/share/packages/refroot/amd64/r201310v00/bb/include/stlport -I/bb/build/share/source/include/00depbuild/ -I/bb/build/share/source/include/00offlonly/ -I. -DBSL_OVERRIDES_STD '
let g:syntastic_mode_map = { 'mode' : 'passive' }
let g:syntastic_cpp_compiler = 'g++'


