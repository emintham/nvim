set nocompatible
syntax on
filetype plugin indent on
colorscheme alduin

let mapleader=","

set incsearch
set ignorecase
set smartcase

set scrolloff=2
set nowrap
set number

set bs=indent,eol,start
set expandtab
set ts=2
set sw=2

set nofen
set fdm=indent

nnoremap <silent> <Space> @=(foldlevel(',')?'za':"\<Space>")<CR>
vnoremap <Space> zf

nnoremap <C-c> <Esc>:close<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <Leader>< :bp<CR>
nnoremap <Leader>> :bn<CR>

" ---------------- Highlight 80th column -------------------------------------
if exists('+colorcolumn')
  set colorcolumn=80
else
  :match ErrorMsg '\%>80v.\+'
endif

" ------------------------ <Ctrl-l> ------------------------------------------
nnoremap <silent> <C-l> :nohl<CR><C-l>

" ------------------ Clear Trailing Whitespace -------------------------------
autocmd BufWritePre * %s/\s\+$//e

" ------------------------- F2 for Goyo --------------------------------------
nnoremap <silent> <F2> :Goyo<CR>

" ------------------------- :Jsonfmt to format .json -------------------------
function! SafeJsonFormat()
  " Check if file contains merge conflict markers
  if search('^\(<<<<<<<\|=======\|>>>>>>>\)', 'n')
    echo "Merge conflicts detected - skipping JSON formatting"
  else
    %!python -m json.tool
  endif
endfunction

com! Jsonfmt call SafeJsonFormat()
au FileType json Jsonfmt

