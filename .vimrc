filetype plugin on
syntax on

" Bare neccesities
set number
set wrap
set cursorline

" spacing
set expandtab
set shiftwidth=4
set softtabstop=4

" Nice searching
set incsearch
set hlsearch

" Write backup files to /tmp folder 
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

filetype plugin indent on
