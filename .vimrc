set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Code Folding
Plugin 'tmhedberg/SimpylFold'
" File Explorer
Plugin 'scrooloose/nerdtree'
" Nice bar at the bottom and tab bar
Plugin 'vim-airline/vim-airline'

"Plugin 'nvim-lua/completion-nvim'

" Git Integration
Plugin 'tpope/vim-fugitive'
" Auto pairs for '(' '[' '{'
Plugin 'jiangmiao/auto-pairs'
" Old code Completion
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}

" V Language Support
Plugin 'ollykel/v-vim'

" LaTeX Preview
"Plugin 'xuhdev/vim-latex-live-preview'

" Code Completion
Plugin 'ycm-core/YouCompleteMe'

" Old LaTeX Preview
"Plugin 'ying17zi/vim-live-latex-preview'

" Syntax for TOML
Plugin 'cespare/vim-toml'

" deep learning autocomplete
Plugin 'zxqfl/tabnine-vim'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set splitbelow
set splitright

"split navigations in all modes
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"tab navigation
map <F3> :bp <Enter>
map <F4> :bn <Enter>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py\
			\ set tabstop=4
			\ set softtabstop=4
			\ set shiftwidth=4
			\ set textwidth=79
			\ set expandtab
			\ set autoindent
			\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css\
			\ set tabstop=2
			\ set softtabstop=2
			\ set shiftwidth=2

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let python_highlight_all=1
filetype plugin on
syntax on



"NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme nord
set nu
set clipboard=unnamed
set backspace=indent,eol,start
:map <F5> :! clear; python3.8 %<CR>
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4




"vim-latex-live-preview
let g:livepreview_previewer = 'preview'

"latex stuff
"let g:ycm_filetype_blacklist = {'plaintex' : 0}
"let g:tex_flavor='latex'

"airline config stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" JSON stuff for coc.vim
"autocmd FileType json syntax match Comment +\/\/.\+$+

" Spell Checking
syntax enable
set spell spelllang=en_us

" Make sure `Y` does what it should
map Y y$

" Make it possible to leave termanal mode
tnoremap <Esc> <C-\><C-n>
