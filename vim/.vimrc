set nocompatible
filetype off

"set runtime path to vundle and init
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"could also call a path where vundle should install plugins

Plugin 'VundleVim/Vundle.vim'
Plugin 'ap/vim-css-color'
Plugin 'scrooloose/nerdtree'

"for color
Plugin 'chriskempson/base16-vim'

"snippet engine
Plugin 'SirVer/ultisnips'
"snippets
Plugin 'honza/vim-snippets'

"for bottom bar
Plugin 'bling/vim-airline'

"More syntax stuff
Plugin 'scrooloose/syntastic'

"For git stuff
Plugin 'tpope/vim-fugitive'

"for commenting out
Plugin 'tomtom/tcomment_vim'

"sessioning made easy to load
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'

"vim jsx and javascript support
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'

Plugin 'tpope/vim-surround'

Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

"set up for color scheme. Requires terminal to have corresponding theme
syntax enable
set background=dark
:let t_Co=256
:hi Normal ctermbg=none
colorscheme base16-monokai

set guifont=Hack:h12

"uses spaces instead of tab chars. Sets size to 4
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set hlsearch

"enables line numbers
set number
"set statusbar to always show and add a ruler
set laststatus=2
set ruler

"automatically complete tags with </<space>
:iabbrev </ </<C-X><C-O>

set ttimeoutlen=0

"toggle NERDTree with ctrl-n
nnoremap <C-n> :NERDTreeToggle<CR>

"change NERDTree to be smaller
:let g:NERDTreeWinSize=20

"snippet config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpsBackwardTrigger="<c-z>"

"airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" Hide Toolbar in MacVim
if has('gui_running')
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R
endif

"set leading key that comes before control commands to space
:let mapleader=' '

"command to edit vimrc from anywhere
:nnoremap <leader>ev :vsplit $MYVIMRC<CR> 
"and reload with sv
:nnoremap <leader>sv :source $MYVIMRC<CR>

"pane controls
nnoremap <leader>wl <C-w>l
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR> 

"buffer controls
nnoremap <leader>bl :bnext<CR>
nnoremap <leader>bh :bNext<CR>
nnoremap <leader>bd :bdelete<CR>

"save quit controls
nnoremap <leader>qq :q<CR>
nnoremap <leader>ww :w<CR>
nnoremap <leader>wq :wq<CR>

"airline config
let g:airline_section_y='' 
let g:airline_section_warning='(syntastic)'

"insert a newline in normal
nnoremap <CR> o<esc>
nnoremap <S-CR> O<esc>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

nnoremap <leader>ss :SaveSession<CR>
nnoremap <leader>os :OpenSession<CR>
let g:session_autoload = 'no'
let g:session_autosave = 'no'

"highlights all chars over line 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

inoremap jk <esc>

"jsx support
let g:jsx_ext_required = 0

"nerd tree ignores
let NERDTreeIgnore=['\.pyc$', '\~$']
 
let g:Powerline_symbols = 'compatible'
