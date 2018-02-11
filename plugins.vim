call plug#begin(vim_dir.'/plugged')

Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'ervandew/supertab'
Plug 'junegunn/vim-easy-align', { 'tag': '*' }
Plug 'majutsushi/tagbar', { 'tag': '*' }
Plug 'scrooloose/nerdtree', { 'tag': '*' }
" Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim', { 'tag': '*' }
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'vim-airline/vim-airline', { 'tag': '*'}
Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/indentpython.vim', { 'tag': '*', 'for': 'python' }
Plug 'vim-syntastic/syntastic', { 'tag': '*'}
Plug 'bkad/CamelCaseMotion'
Plug 'weynhamz/vim-plugin-minibufexpl', { 'tag': '*'}
Plug 'wincent/command-t', { 'tag': '*', 'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make' }

if has('nvim')
  Plug 'roxma/nvim-completion-manager'
  Plug 'roxma/ncm-rct-complete'
endif

call plug#end()
