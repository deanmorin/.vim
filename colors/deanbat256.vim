runtime colors/wombat256.vim
let colors_name = 'deanbat256'

hi clear DiffAdd
hi clear DiffDelete
hi clear DiffChange
hi clear DiffText
hi clear ColorColumn
hi clear Error
hi clear ErrorMsg
hi clear Todo
hi clear SpellBad
hi clear SpellCap

hi DiffAdd      cterm=bold ctermfg=10 ctermbg=17
hi DiffDelete   cterm=none ctermfg=22 ctermbg=17
hi DiffChange   cterm=bold ctermfg=10 ctermbg=17
hi DiffText     cterm=bold ctermfg=10 ctermbg=88

hi ColorColumn  ctermbg=0
hi Error        ctermbg=88
hi ErrorMsg     ctermbg=88
hi Todo         ctermbg=11 ctermfg=0

hi SpellBad     cterm=underline ctermfg=160
hi SpellCap     cterm=underline

"For files that don't have filetype-specific syntax rules
syntax match NotPrintableAscii "[^\x20-\x7F]"
"For files that do have filetype-specific syntax rules
autocmd Syntax * syntax match NotPrintableAscii "[^\x20-\x7F]" containedin=ALL

hi NotPrintableAscii  ctermbg=236
