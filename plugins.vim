let &runtimepath .= ','.vim_dir.'/bundle/neobundle.vim'
let neobundle#install_process_timeout = 300

call neobundle#begin(expand(vim_dir.'/bundle'))

NeoBundleFetch 'shougo/neobundle.vim'  "Let NeoBundle manage NeoBundle

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'bling/vim-airline'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'vim-scripts/indentpython.vim'
NeoBundle 'bkad/CamelCaseMotion'
NeoBundle 'fholgado/minibufexpl.vim'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'wincent/command-t'

call neobundle#end()

NeoBundleCheck  "Prompt if uninstalled bundles are found
