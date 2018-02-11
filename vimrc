if has('nvim')
  let vim_dir = fnameescape($HOME.'/.config/nvim')
else
  let vim_dir = fnameescape($HOME.'/.vim')
end

execute 'source '.vim_dir.'/settings.vim'
"execute 'source '.vim_dir.'/dbext.vim'

"Plugins slow down vimdiff
if !&diff && version >= 704
  execute 'source '.vim_dir.'/plugins.vim'
  execute 'source '.vim_dir.'/plugin_settings.vim'
end
