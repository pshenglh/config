
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'bling/vim-airline'
call vundle#end()
filetype plugin indent on

set t_Co=256
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set smartindent
:set expandtab
:set nu
:set smarttab
:set hlsearch
:set encoding=utf-8
:hi Search term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
:hi Visual term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
let g:molokai_original = 1
let g:rehash256 = 1

"indent line"
let g:indentLine_char='¦'
let g:indentLine_enabled = 1

"autopep8"
let g:autopep8_disable_show_diff=1

" 新增的行
hi DiffAdd    ctermbg=235  ctermfg=108  guibg=#262626 guifg=#87af87 cterm=reverse gui=reverse
" 变化的行
hi DiffChange ctermbg=235  ctermfg=103  guibg=#262626 guifg=#8787af cterm=reverse gui=reverse
" 删除的行
hi DiffDelete ctermbg=235  ctermfg=131  guibg=#262626 guifg=#af5f5f cterm=reverse gui=reverse
" 变化的文字
hi DiffText   ctermbg=235  ctermfg=208  guibg=#262626 guifg=#ff8700 cterm=reverse gui=reverse
