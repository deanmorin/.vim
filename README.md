# Installation

If you want to use a `.vimrc` for additional local settings, make sure it contains the following to call the main `vimrc`:

    let vim_dir = fnameescape($HOME.'/.vim')
    execute 'source '.vim_dir.'/vimrc'

If you're running `neovim`, also run:

    $ ln -s ~/.vim ~/.nvim
