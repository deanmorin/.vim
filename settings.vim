scriptencoding utf-8
set encoding=utf-8

if !isdirectory(vim_dir.'/backup')
  silent call mkdir(vim_dir.'/backup', 'p')
endif
if !isdirectory(vim_dir.'/swp')
  silent call mkdir(vim_dir.'/swp', 'p')
endif
if !isdirectory(vim_dir.'/undo')
  silent call mkdir(vim_dir.'/undo', 'p')
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Filetype
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin on  "Enable file-specific settings
filetype indent on  "Enable file-specific indentation rules

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","     "Change leader from \

set pastetoggle=<F11>   "Disable autoindent, key mappings, etc. to paste text

"Make |Y| behave like |C| and |D|
nmap Y yY$
"Close buffer
nnoremap <Leader>h  :bd<CR>
"Remap H (screen top) and L (screen bottom) so they can be repurposed to move
"between buffers
nnoremap <Leader>H  H
nnoremap <Leader>L  L
"Move between splits
nnoremap <C-H>  <C-W>h
nnoremap <C-L>  <C-W>l
nnoremap <C-J>  <C-W>j
nnoremap <C-K>  <C-W>k
"Add line without entering insert mode
nnoremap <CR> o<Esc>
"Shortcuts for substitute
nnoremap <Leader>subg  :%s;;g<Left><Left>
nnoremap <Leader>subc  :%s;;gc<Left><Left><Left>
"Q is right next to ':' in dvorak, and I never use ex mode anyway
nnoremap Q  <NOP>
"Source .vimrc
nnoremap <Leader>source  :source $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable 256 colors where possible
if $COLORTERM == 'gnome-terminal' || $TERM == 'screen'
  set t_Co=256
endif

"Colorscheme is unusable unless terminal supports 256 colors
if &t_Co == 256
  colorscheme deanbat256
endif

if exists('+colorcolumn')
  set colorcolumn=80   "Show margin
endif

set number             "Line numbers
set ruler              "Line/column/position indicator
set linebreak          "Don't wrap text mid-word
set display=lastline   "Show as much of wrapped line as possible (instead of @)

syntax on              "Language-specific syntax highlighting

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4        "Spaces used to display a tab
set shiftwidth=4     "Indent width
set expandtab        "Tabs to spaces
set fileformat=unix  "Use <NL> line endings

set backspace=2      "Enable backspace in insert mode
set scrolloff=7      "Keep cursor 7 lines from edge of screen when navigating
set autoindent       "Use indent level of previous line
                     "(doesn't interfere with other indent settings)
set visualbell
set nojoinspaces  "Only one space after a period when formatting with J or gq
set tildeop       "Tilde acts like an operator (etc. ~w to change case of word)
set hidden        "Allow switching between buffers without saving
set splitbelow    "Horizontal split opens below current window
set incsearch     "Start searching before pressing enter"

if has('mouse')
  set mouse=a     "Enable mouse in terminal for all modes
endif

"Use system clipboard without specifying the register
if has('unnamedplus')
  set clipboard=unnamedplus  
else
  set clipboard=unnamed
end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command Mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Emacs line movement
cnoremap <C-A>  <Home>
cnoremap <C-E>  <End>

"Tab completion setting
set wildmode=list:longest,full

"Ignore certain file types
set wildignore=*.beam,*.class,*.o,*.pyc
set wildignore+=*.egg,*.egg-info,*.gem
set wildignore+=*.gif,*.jpg,*.png
set wildignore+=*.pdf
set wildignore+=*.dmg,*.zip

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell Check
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Toggle spell check
nnoremap <Leader>ss    :setlocal spell!<CR>
"Find next spelling error
nnoremap <Leader>sn    ]s
"Pick correct spelling
nnoremap <Leader>sfix  z=
"Add word to dictionary
nnoremap <Leader>sadd  zg

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Create ctags file for project
nnoremap <Leader>ctags  :!ctags -R .<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Housekeeping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let &directory = vim_dir.'/swp//,/tmp//'      "Put swap files in one place
let &backupdir = vim_dir.'/backup//,/tmp//'   "Put backup files in one place

if exists('+undofile')
  let &undodir = vim_dir.'/undo'              "Put undo files in one place
  set undofile          "Persist undo history after file closes
  set undolevels=1000   "Max changes that can be undone
  set undoreload=10000  "Max lines to save for undo on a buffer reload
endif

"Underline trailing whitespace
nnoremap <silent> <Leader>ws  :match Underlined /\s\+\%#\@<!$/<CR>
"Clear trailing whitespace underlining
nnoremap <silent> <Leader>wh  :match<CR>
"Delete trailing whitespace
nnoremap <silent> <Leader>wd 
    \ :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set shell=bash  "Using zsh will only cause headaches
set path+=**    "Include subdirectories of current folder when using |gf|, etc
