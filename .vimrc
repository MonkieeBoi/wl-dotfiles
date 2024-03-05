" Basic Settings

    set encoding=utf-8
    set nu rnu
    set is
    set hls
    syntax on
    set nocompatible
    set ignorecase smartcase

" Autocompletion

    set wildmode=longest,list,full
    filetype plugin on
    set omnifunc=syntaxcomplete#Complete
    set dictionary+=/usr/share/dict/british

" Tabs

    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set expandtab
    set autoindent

" Splits

    set splitbelow splitright

" Theming

    " let g:lightline = {'colorscheme': 'nord'}
    " set laststatus=2
    " colorscheme nord
    set term=st-256color
    set t_Co=16
