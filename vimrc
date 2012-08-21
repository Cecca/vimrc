set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"" ----------------------------------------------------------------------------
""    Plugins
"" ----------------------------------------------------------------------------

Bundle 'gmarik/vundle'
Bundle 'Tagbar'
Bundle 'Align'
" Replaces some haskell tokens with unicode characters
Bundle 'Haskell-Conceal'
" Better highlighting
Bundle 'syntaxhaskell.vim'
" For commenting things
Bundle 'The-NERD-Commenter'
" NERD Tree
Bundle 'The-NERD-tree'
" To have syntax check every time a document is saved
" ghc-mod from hackage is required for haskell
Bundle 'Syntastic'
" Most Recently Used files
Bundle 'mru.vim'
" Colorscheme
Bundle 'altercation/vim-colors-solarized'
" Project
Bundle 'project.tar.gz'


"" ----------------------------------------------------------------------------

filetype plugin indent on       " required

set rtp+=~/.vim/bundle/lushtags

"" ----------------------------------------------------------------------------
""    Generic formatting and UI options
"" ----------------------------------------------------------------------------

set number

set smartindent
set expandtab
set softtabstop=4
set shiftwidth=4

syntax enable

if has("gui_running")
    set background=dark
    colorscheme solarized
    set guioptions=mT
endif

nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>

"" ----------------------------------------------------------------------------
""     Editing options
"" ----------------------------------------------------------------------------

set foldmethod=marker

nmap <leader>md :%! hsmarkdown

" Syntastic modes
let g:syntastic_mode_map = { 'mode' : 'passive',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': []}

"" ----------------------------------------------------------------------------
""     Haskell Mode
"" ----------------------------------------------------------------------------

" use ghc functionality for haskell files
au Bufenter *.hs compiler ghc
let g:haddock_browser = "/usr/bin/firefox"

