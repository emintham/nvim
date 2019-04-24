call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'junegunn/goyo.vim'

Plug 'scrooloose/syntastic'

Plug 'ervandew/supertab'

Plug 'tpope/vim-fugitive'

Plug 'AlessandroYorba/Alduin'

Plug 'leafgarland/typescript-vim'

Plug 'ElmCast/elm-vim'

Plug 'Shougo/denite.nvim'

call plug#end()
