" data types
syn keyword csc2Type     byte short u_short int u_int longlong u_longlong
syn keyword csc2Type     float double decimal32 decimal64 decimal128
syn keyword csc2Type     cstring pstring vutf8 blob
syn keyword csc2Type     datetime intervalym intervalds
hi link csc2Type         Type

" Sections
syn keyword csc2Section  constants tag keys constraints
hi link csc2Section      StorageClass

" Comments
syn match csc2Comment    /\/\/.*$/
hi link csc2Comment      Comment

" Values
syn match csc2Number     /\d\+\(\.\d\+\)\?/
syn match csc2Number     /x'[a-fA-F0-9]\+'/
hi link csc2Number       Number
syn match csc2String     /"[^"]*"/
syn keyword csc2String   yes no
hi link csc2String       String

" Known tags
syn keyword csc2Tag      ondisk default
hi link csc2Tag          Statement

" Other keywords
syn keyword csc2kw       dup datacopy null dbpad dbstore dbload
hi link csc2kw           Keyword

let b:current_syntax = "csc2"
