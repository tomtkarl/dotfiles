"
" @file BBFuncs.vim
" @brief Generate Bloomberg-style include guards
" @author Karl Barker
" @version 0.1
" @date 2013-09-16
"
function! InitH()
    let name = substitute(expand('%:t'), "\.h", "_h", "g")
    let s_name = toupper(expand('%:t:r'))

    call append(0, ["\/\/ ".name."                                          -*-C++-*-"
                  \,"#ifndef INCLUDED_".s_name
                  \,"#define INCLUDED_".s_name
                  \,""
                  \,"#include <sysutil_ident.h>"
                  \,"SYSUTIL_IDENT_RCSID(".name.",\"$Id$ $CSID$\")"
                  \,"SYSUTIL_PRAGMA_ONCE"
                  \,""
                  \,""
                  \,""
                  \,"#endif"
                  \,"//---------------------------------------------------------------"
                  \,"// NOTICE:"
                  \,"// Copyright (C) Bloomberg L.P., 2013","// All Rights Reserved."
                  \,"// Property of Bloomberg L.P. (BLP)"
                  \,"// This software is made available solely pursuant to the"
                  \,"// terms of a BLP license agreement which governs its use."
                  \,"// ----------------------------------- END-OF-FILE ---------------"])
    :9
    
endfunction
command! Inith :call InitH()


function! InitCpp()
    let name = substitute(expand('%:t'), "\.h", "_h", "g")
    let s_name = toupper(expand('%:t:r'))

    call append(0, ["\/\/ ".name."                                          -*-C++-*-"
                  \,""
                  \,"#include <sysutil_ident.h>"
                  \,"SYSUTIL_IDENT_RCSID(".name.",\"$Id$ $CSID$\")"
                  \,""
                  \,""
                  \,""
                  \,"#endif"
                  \,"//---------------------------------------------------------------"
                  \,"// NOTICE:"
                  \,"// Copyright (C) Bloomberg L.P., 2013","// All Rights Reserved."
                  \,"// Property of Bloomberg L.P. (BLP)"
                  \,"// This software is made available solely pursuant to the"
                  \,"// terms of a BLP license agreement which governs its use."
                  \,"// ----------------------------------- END-OF-FILE ---------------"])
    :6
    
endfunction
command! Initcpp :call InitCpp()


