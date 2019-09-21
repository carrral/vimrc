
set tabstop=4

set shiftwidth=4

set softtabstop=4

set expandtab

set scrolloff=3

set autoindent

set number

"Cada que se abre una ventana horizontal, el default es abajo
set splitbelow

set splitright

"Mapeo jj -> ESC 
inoremap jj <ESC>

inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

"Mapeo para ver etiquetas
map <C-t> :TagbarToggle <CR>

"Mapeo para Filetree
map <C-f> :NERDTreeToggle<CR>

"Mapeos para cambiar de tabs con Alt+Flecha
map <A-Left> gT
map <A-Right> gt

"Mapeos para make y python
map <F9> :!clear ;:python %<CR> "Ejecuta el archivo actual
nmap <F10> :!clear; :make <CR>

call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic' "Análisis sintáctico
Plug 'tpope/vim-surround' "Surround para (),[],{},etc.
Plug 'tpope/vim-fugitive' "Integración con git
Plug 'majutsushi/tagbar' "Lista de funciones
Plug 'itchyny/lightline.vim' "Barra de status
Plug 'severij/vadelma' " Esquema de color
Plug 'scrooloose/nerdtree' "Filetree
Plug 'scrooloose/nerdcommenter' "Comentarios

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim' "Autocompletado
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


let g:deoplete#enable_at_startup = 1

colorscheme vadelma 

" Settings de lightline
set laststatus=2
set noshowmode
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


filetype plugin on "Para nerd commenter

call plug#end()
