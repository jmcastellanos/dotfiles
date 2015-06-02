call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
"Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'ELouisYoung/vim-better-molokai'
Plug 'tpope/vim-commentary'

call plug#end()

inoremap jk <esc>
set relativenumber

""""""" General configurations """""""
"-- General options --"
filetype plugin indent on                   " enable file type detection
set undodir=~/.tmp/undo                     " undo directory
set backupdir=~/.tmp                        " change backups
set dir=~/.tmp                              " temporal files directory
set hidden                                  " hide instead of closing buffers
set wildmenu                                " zsh-style autocomplete
set wildmode=full                           " style the autocomplete menu
runtime macros/matchit.vim                  " enable matchit plugin
set ignorecase                              " case insensitive searching
set smartcase                               " improve case sensitivity
set ttyfast                                 " improve scrolling speed
set lazyredraw                              " buffer screen updates (faster)

"-- Visual configurations --"
syntax on                                   " enable syntax highlighting
set t_Co=256                                " set color support
set number                                  " show line numbers
set relativenumber                          " easier motion with relative
set showmatch                               " show matching parentheses
hi MatchParen cterm=bold ctermbg=none ctermfg=none
colorscheme better-molokai                  " set colorscheme
set incsearch                               " incremental search (preview position)
set scrolloff=1                             " try to show one line "above/bellow cursor
set laststatus=2                            " always show status bar
set listchars=tab:▸\ ,eol:¬                 " Use the same symbols as "TextMate for tabstops and EOLs

"-- Editing configuration --"
set expandtab                               " use spaces for indenting
set shiftwidth=4                            " for manual indentation
set softtabstop=4                           " for automatic indentation
set autoindent                              " simplest automatic indentation
set shiftround                              " use multiple of shiftwidth when indenting

"-- File type specific configurations --"
au FileType python setl sw=4 sts=4 et
au FileType fortran setl sw=4 sts=4 et
au FileType perl setl sw=4 sts=4 et
au FileType javascript setl sw=4 sts=4 et
au FileType java setl sw=3 sts=3 et
au FileType go setl noet ts=8 sw=8 sts=8
au FileType julia setl sw=4 sts=4 et


#=============FIRST CONFIG====================
#set tabstop=4
#set relativenumber
#set expandtab
#imap jk <Esc>
