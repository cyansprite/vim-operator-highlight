if exists( 'g:loaded_operator_highlight' )
    finish
endif
let g:loaded_operator_highlight = 1

if !exists( 'g:ophigh_highlight_link_group' )
    let g:ophigh_highlight_link_group = "Operator"
endif

if !exists( 'g:bracehigh_highlight_link_group' )
    let g:bracehigh_highlight_link_group = "Special"
endif

if !exists( 'g:brackethigh_highlight_link_group' )
    let g:brackethigh_highlight_link_group = "Directory"
endif

if !exists( 'g:parenhigh_highlight_link_group' )
    let g:parenhigh_highlight_link_group = "Identifier"
endif

if !exists( 'g:ophigh_filetypes_to_ignore' )
    let g:ophigh_filetypes_to_ignore = {'jinja': 1, 'help': 1, 'notes': 1,
                \ 'markdown': 1, 'less': 1, 'sh': 1, 'html': 1, 'diff': 1,
                \ 'qf': 1, 'css': 1, 'txt': 1
    \}
endif

fun! s:HighlightOperators()
    if get( g:ophigh_filetypes_to_ignore, &filetype, 0 )
        return
    endif

    syntax match ParenChars ")\|("
    syntax match BraceChars "{\|}"
    syntax match BracketChars "\[\|\]"
    syntax match OperatorChars "?\|+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|\.\|/\(/\|*\)\@!"

    exec "hi link OperatorChars " . g:ophigh_highlight_link_group
    exec "hi link ParenChars " . g:parenhigh_highlight_link_group
    exec "hi link BracketChars " . g:brackethigh_highlight_link_group
    exec "hi link BraceChars " . g:bracehigh_highlight_link_group
endfunction

au Syntax * call s:HighlightOperators()
au ColorScheme * call s:HighlightOperators()
