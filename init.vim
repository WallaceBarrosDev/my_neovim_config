" PLUGINS "
call plug#begin()
    Plug 'sainnhe/sonokai'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'
    Plug 'preservim/nerdtree'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()

" GLOBAL SETES " 
syntax on
set nu 

set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set expandtab 
set smarttab 
set smartindent 

set hidden 
set incsearch 
set ignorecase 
set smartcase 

set scrolloff=8 
set colorcolumn=100 
set signcolumn=yes 
set cmdheight=1 

set updatetime=20 
set encoding=utf-8 
set nobackup 
set nowritebackup 

set splitright 
set splitbelow 
set autoread 
"set mouse=a" 

filetype on
filetype plugin on
filetype indent on


" REMAPS " 
let mapleader = " "


" AUTOCMD " 
nmap <Leader>r :source $MYVIMRC<CR>
nmap <Leader>i :PlugInstall<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>t :terminal<CR>


" THEMES " 
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

let g:sonokai_style = 'espresso'
let g:sonokai_enable_italic = 0
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'
let g:airline_theme = 'sonokai'

colorscheme sonokai


" AIRLINE " 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


" NERDTREE " 
nmap <Leader>n :NERDTreeToggle<CR>
