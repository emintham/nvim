" --------- Load all vim stuff from ~/.config/nvim/*.vim ---------------------
" Assumptions:
" - Plugins will be returned first in the glob. e.g. 0_plugins.vim
" - General stuff like mapleader, other general shortcuts will be returned
"   second. e.g. 1_general.vim
" ----------------------------------------------------------------------------
for path in split(glob('$HOME/.config/nvim/*.vim'), '\n')

  " Make sure not to get into infinite recursion by re-sourcing init.vim
  if split(path, '/')[-1] != 'init.vim'
    exe 'source' path
  endif

endfor
