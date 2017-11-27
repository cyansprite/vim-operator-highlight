# Vim operator highlight

## What's it do?
```vim
syntax match ParenChars ")\|("
syntax match BraceChars "{\|}"
syntax match BracketChars "\[\|\]"
syntax match OperatorChars "?\|+\|-\|\*\|;\|:\|,\|<\|>\|&\||\|!\|\~\|%\|=\|\.\|/\(/\|*\)\@!"
```
If you don't know vimscript, it means it highlights paren, bracves, brackets and
operators as their own highlight group.

## Options
```vim
let g:ophigh_highlight_link_group = "Operator"
let g:bracehigh_highlight_link_group = "Special"
let g:brackethigh_highlight_link_group = "Directory"
let g:parenhigh_highlight_link_group = "Identifier"
let g:ophigh_filetypes_to_ignore = {'jinja': 1, 'help': 1, 'notes': 1,
            \ 'markdown': 1, 'less': 1, 'sh': 1, 'html': 1, 'diff': 1,
            \ 'qf': 1, 'css': 1, 'txt': 1
\}

```
I use links because if you switch colorschemes or machines you'll want something
that is pre-existing otherwise it will complain and no one wants to hear
complaining.

For the filetypes it's a good base set, feel free to add or remove, or just make
your own dictionary.
