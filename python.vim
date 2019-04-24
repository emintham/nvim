au FileType python set ts=4
au FileType python set sw=4
au FileType python set softtabstop=4
au FileType python set expandtab

" ------------------------- F4 for pdb ---------------------------------------
nnoremap <silent> <F4> oimport pdb;pdb.set_trace()<Esc>

" ------------------------ F5 for eminutils ----------------------------------
nnoremap <silent> <F5> ofrom eminutils.profile import Timer<CR>with Timer('bar'):<Esc>

" ------------------------ F6 for traceback ----------------------------------
nnoremap <silent> <F6> ofrom traceback import print_stack;print_stack()<Esc>
