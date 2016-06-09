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

" ~~~~~~~~~~ Solarized theme ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  :let g:zenburn_high_Contrast=1
  colorscheme zenburn
endif
call togglebg#map('<F5>')

" ~~~~~~~~~~ Navigation Bar & File Search ~~~~~~~~~~~~~~~
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
map <silent> <C-n> :NERDTreeToggle<CR>
Plugin 'yonchu/accelerated-smooth-scroll'
" ~~~~~~~~~~ Powerline ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:airline_powerline_fonts=1
let &t_Co=256
Plugin 'tpope/vim-fugitive' " for git blame mostly
" ~~~~~~~~~~ Vim settings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set encoding=utf-8
syntax on
filetype indent plugin on
:set clipboard=unnamed
:set background=dark
:set cursorline

set modeline
:set tabstop=8 expandtab shiftwidth=4 softtabstop=4
:set backspace=indent,eol,start
:set whichwrap+=<,>,h,l,[,]
:imap <A-BS> <C-W>

:set lazyredraw
:set nu
