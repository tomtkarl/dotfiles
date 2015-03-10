" data types
syn keyword csc2Type     datetime intervalym intervalds
hi link csc2Type         Type

" Sections
syn keyword csc2Section  CHANGED UNCHANGED
hi link csc2Section      StorageClass

" Values
syn match csc2String     /(?:=)[^:]*/
hi link csc2String       String

" Known tags
syn keyword csc2Tag      library target from to type
hi link csc2Tag          Statement

" Other keywords
syn keyword csc2kw       library target from to type
hi link csc2kw           Keyword

let b:current_syntax = "csc2"
