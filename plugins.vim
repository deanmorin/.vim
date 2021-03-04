call plug#begin(vim_dir.'/plugged')

Plug 'cespare/vim-toml'
Plug 'davidhalter/jedi-vim', { 'for': 'python' }
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
Plug 'ervandew/supertab'
Plug 'google/vim-jsonnet'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'junegunn/vim-easy-align', { 'tag': '*' }
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vista.vim'
Plug 'ludovicchabant/vim-gutentags'
" Replaced by vista
" Plug 'majutsushi/tagbar', { 'tag': '*' }
Plug 'plytophogy/vim-virtualenv', { 'for': 'python' }
Plug 'rhysd/git-messenger.vim'
Plug 'scrooloose/nerdtree', { 'tag': '*' }
" Plug 'SirVer/ultisnips'
Plug 'sjl/gundo.vim', { 'tag': '*' }
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fireplace'
" Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-speeddating'
Plug 'vim-airline/vim-airline', { 'tag': '*'}
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-scripts/indentpython.vim', { 'tag': '*', 'for': 'python' }
Plug 'bkad/CamelCaseMotion'
Plug 'w0rp/ale'
Plug 'weynhamz/vim-plugin-minibufexpl', { 'tag': '*' }
" Plug 'wincent/command-t', { 'tag': '*', 'do': 'cd ruby/command-t/ext/command-t && { make clean; ruby extconf.rb && make }' }
" Plug 'wincent/command-t', { 'tag': '*' }
" Need to first `brew install fzf`
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

if has('nvim')
  Plug 'deanmorin/nvim-completion-manager'
  Plug 'roxma/ncm-rct-complete'
endif

call plug#end()
