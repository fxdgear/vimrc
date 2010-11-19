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
colorscheme wombat
if has("gui_running")
    set guioptions=egmrt
endif
set wm=4

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
set list

set scrolloff=3

" MAKE IT EASY TO UPDATE/RELOAD_vimrc
map ,s :source ~/.vimrc<Enter>
map ,v :e ~/vimrc/vimrc<Enter>


" Convert tabs to spaces
set expandtab
retab!

" function to strip tailing white space
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Map function for stripping tailing whitespace
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Strip tailing white space on save
autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()


map <D-S-]> gt
map <D-S-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>


filetype indent on
filetype on
filetype plugin on

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

