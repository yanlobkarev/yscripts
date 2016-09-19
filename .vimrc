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

Plugin 'kchmck/vim-coffee-script'
" ~~~~~~~~~~ Color themes ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
colorscheme moonshine          " https://github.com/KKPMW/moonshine-vim.git
"colorscheme off                 " https://github.com/pbrisbin/vim-colors-off.git
"colorscheme 1989               " https://github.com/sonjapeterson/1989.vim.git
"colorscheme duotone-darkpool   " https://github.com/atelierbram/vim-colors_duotones.git

:set background=dark
" ~~~~~~~~~~ Debugging ~~~~~~~~~~~~~~~~~~ ~~~~~~~~~~~~~~~

Plugin 'jaredly/vim-debug'    " before installation do `pip install vimpdb`
nnoremap <C-b> oimport pdb; pdb.set_trace()<Esc> " adds vimpdb entry point in vim on Ctrl-B

" ~~~~~~~~~~ Navigation Bar & File Search ~~~~~~~~~~~~~~~
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$'] "   ignore files
Plugin 'yonchu/accelerated-smooth-scroll'
" ~~~~~~~~~~ Powerline ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
let g:airline_powerline_fonts=1
let &t_Co=256
Plugin 'tpope/vim-fugitive' " Git support
Plugin 'airblade/vim-gitgutter' " shows modified lines
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '--'
let g:gitgutter_sign_modified_removed = '~-'
let g:gitgutter_sign_column_always = 1
"let g:gitgutter_override_sign_column_highlight = 0
highlight GitGutterAddLine ctermfg=green ctermbg=green
set updatetime=250
" ~~~~~~~~~~ Better awRCH ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" brew install the_silver_searcher
" brew install ack
" needs Ack version >= 2.0
Plugin 'mileszs/ack.vim'
" let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
let g:ackprg = 'ag -R --vimgrep '


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

"split navigations
nnoremap <C-Down> <C-W><C-J>    " to bottom split
nnoremap <C-Up> <C-W><C-K>      " to upper split
nnoremap <C-Right> <C-W><C-L>   " to right split
nnoremap <C-Left> <C-W><C-H>    " to left split

" tab navigation
map  <C-S-Right> :tabn<CR> " left tab
map  <C-S-Left> :tabp<CR>  " right tab
map  <C-T> :tabnew<CR>     " new tab

:set lazyredraw
:set nu
