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
" ...


" AUTOCMD " 
" ...


" PLUGINS " 

call plug#begin()

Plug 'sainnhe/sonokai'

call plug#end()


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

colorscheme sonokai
