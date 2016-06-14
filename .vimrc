" ~~~~~~~~~~~ Vundle ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ~~~~~~~~~~ Jedi (Python autocompletion) ~~~~~~~~~~~~~~~
Plugin 'davidhalter/jedi-vim'
autocmd FileType python setlocal completeopt-=preview

" ~~~~~~~~~~ Color themes ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
colorscheme moonshine          " https://github.com/KKPMW/moonshine-vim.git
"colorscheme off                 " https://github.com/pbrisbin/vim-colors-off.git
"colorscheme 1989               " https://github.com/sonjapeterson/1989.vim.git
"colorscheme duotone-darkpool   " https://github.com/atelierbram/vim-colors_duotones.git

:set background=dark

" ~~~~~~~~~~ Navigation Bar & File Search ~~~~~~~~~~~~~~~
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
map <silent> <C-n> :NERDTreeToggle<CR>
Plugin 'yonchu/accelerated-smooth-scroll'
" ~~~~~~~~~~ Powerline ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:airline_powerline_fonts=1
let &t_Co=256
Plugin 'tpope/vim-fugitive' " Git support
" ~~~~~~~~~~ Vim settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set encoding=utf-8
syntax on
filetype indent plugin on
set clipboard=unnamed
:set cursorline

set modeline
:set tabstop=8 expandtab shiftwidth=4 softtabstop=4
:set backspace=indent,eol,start
:set whichwrap+=<,>,h,l,[,]

map = <c-w>>
map - <c-w><

:set lazyredraw
:set nu
