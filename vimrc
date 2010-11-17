set nocompatible
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set showmatch
set guioptions-=T
set vb t_vb=
set ruler
set incsearch
set virtualedit=all
set number
retab

syntax on
colorscheme pablo
if has("gui_running")
    set guioptions=egmrt
endif
set wm=4

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list
