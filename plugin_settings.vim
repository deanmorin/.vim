"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2  "Always show status line for the last window

let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1 "Show errors from ale

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_text_changed = 'never'
let g:ale_echo_msg_format = '[%linter%] %s'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CamelCaseMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader><Leader>b <Plug>CamelCaseMotion_b

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gundo_prefer_python3 = 1
let g:gundo_preview_bottom = 1
let g:gundo_width = 30
nnoremap <silent><F5>  :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent><CR>  :EasyAlign<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fireplace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pretty print last result
nnoremap <Leader>cp :execute "Eval (do (require 'clojure.pprint) (clojure.pprint/pp))"<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent><Leader>f  :Files<CR>
nnoremap <silent><Leader>t  :GFiles<CR>
nnoremap <silent><Leader>a  :Lines<CR>
if has('nvim')
  autocmd! FileType fzf
  autocmd  FileType fzf set laststatus=0 noshowmode noruler
    \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplCycleArround = 1
let g:miniBufExplSplitBelow = 0
let g:miniBufExplUseSingleClick = 1
nnoremap H  :MBEbp<CR>
nnoremap L  :MBEbn<CR>
nnoremap ˙  :MBEbb<CR>
nnoremap ¬  :MBEbf<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeMouseMode = 3
let g:NERDChristmasTree = 1
"Open NerdTREE on current buffer's folder
nnoremap <silent><F3>  :NERDTreeFind<CR>
nnoremap <silent><F4>  :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_flake8_args = '--ignore E221,E303,E501'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_singleclick = 1
nnoremap <silent><F9>  :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = '<Leader>u<CR>'
let g:UltiSnipsJumpForwardTrigger = '<Leader>u<CR>'

" let g:gutentags_trace = 1
