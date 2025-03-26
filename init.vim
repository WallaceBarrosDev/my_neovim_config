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
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    Plug 'honza/vim-snippets'
call plug#end()

" CONFIGURAÇÕES GERAIS "
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
set updatetime=300
set encoding=utf-8
set nobackup
set nowritebackup
set splitright
set splitbelow
set autoread

filetype on
filetype plugin on
filetype indent on

" TECLAS DE ATALHO "
let mapleader = " "

" Atualizar init.vim "
nmap <Leader>rr :source $MYVIMRC<CR>
nmap <Leader>i :PlugInstall<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :wq<CR>
nmap <Leader>t :terminal<CR>i
nmap <Leader>b :bd<CR>

" Abrir NERDTree "
nmap <Leader>n :NERDTreeToggle<CR>

" Java "
function! CompileAndRun()
   73     let package = system("grep -m1 '^package' "
      . expand('%') . " | awk '{print $2}' | tr -d ';'      ")                                                 74     let package = substitute(package, '\n', '',       '')                                                75     execute '!javac -d bin ' . expand('%')         76     execute '!java -cp bin ' . package . '.' . e      xpand('%:t:r')
   77 endfunction
" rodar Java "
nmap <leader>r :call CompileAndRun()<CR>

" TEMA "
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

" COC CONFIGURAÇÃO PARA JAVA "
let g:coc_global_extensions = ['coc-java', 'coc-snippets']

" AUTOCOMPLETE COM TAB "
inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" NAVEGAÇÃO NO COC "
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f <Plug>(coc-format)