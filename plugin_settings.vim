"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2  "always show status line for the last window
"set laststatus=0  "always show status line for the last window

let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CamelCaseMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader><Leader>b <Plug>CamelCaseMotion_b

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command-T
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:CommandTMatchWindowReverse = 1
let g:CommandTMaxHeight = 20

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gundo_preview_bottom = 1
let g:gundo_width = 30
nnoremap <silent><F5>  :GundoToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyAlign
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent><CR>  :EasyAlign<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MiniBufExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:MiniBufExplShowBufNames = 0
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
let g:syntastic_python_checkers = ['flake8']
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists(':Unite')
  call unite#custom#profile('default', 'context', { 'direction': 'botright' })

  "Use '-' as Unite command
  noremap [Unite]  <NOP>
  map     -        [Unite]

  "File search
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
    "call unite#custom#source('file,file/new,buffer,file_rec',
    "\ 'matchers', 'matcher_fuzzy')
  call unite#filters#sorter_default#use(['sorter_rank'])

  noremap <silent>[Unite]b  :Unite bookmark<CR>
  noremap <silent>[Unite]o  :UniteWithCurrentDir -start-insert file_rec/async:!<CR>

  "Yank list
  let g:unite_source_history_yank_enable = 1
  noremap <silent>[Unite]p  :Unite history/yank<CR>

  "if executable('ag')
    "let g:unite_source_grep_command = 'ag'
    "let g:unite_source_group_default_opts = '-i --no-heading --no-color -k -H'
    "let g:unite_source_grep_recursive_opt = ''
  "endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Don't open doc window for omnicomplete by default
set completeopt-=preview
"Turn on/off omnicomple preview window
noremap <Leader>docon  :set completeopt+=preview<CR>

noremap <Leader>docoff :set completeopt-=preview<CR>
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
