let vim_dir = fnameescape($HOME.'/.vim')

"Plugins slow down vimdiff
if !&diff && version >= 704
  if has('nvim')
    execute 'source '.vim_dir.'/nplugins.vim'
  else
    execute 'source '.vim_dir.'/plugins.vim'
  end
end

execute 'source '.vim_dir.'/settings.vim'

if !&diff && version >= 704
  execute 'source '.vim_dir.'/plugin_settings.vim'
end