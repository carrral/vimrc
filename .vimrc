let g:plug_timeout = 300
set tabstop=4

set shiftwidth=4

set softtabstop=4

set expandtab

set scrolloff=3

set autoindent

set number

set encoding=utf-8

"cada que se abre una ventana horizontal, el default es abajo
set splitbelow

set splitright


"Mapeo kj -> ESC 
inoremap kj <ESC>
inoremap jj <ESC>
inoremap JJ <ESC>
inoremap KJ <ESC>

"Mapeo cc-> :comando
map cc <ESC> :


"Mapeo para ver etiquetas
map <C-t> :TagbarToggle <CR>


"Mapeo para Filetree
map <C-f> :NERDTreeToggle<CR>

"Mapeos para cambiar de tabs  
map <C-l> gt
map <C-n> gT

"Mapeos para make y python
map <F9> :!clear ;:python %<CR> "Ejecuta el archivo actual
nmap <F10> :!clear; :make <CR>



"Para vundle
set nocompatible   
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

filetype plugin indent on


call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic' "Análisis sintáctico
Plug 'tpope/vim-surround' "Surround para (),[],{},etc.
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar' "Lista de funciones
Plug 'itchyny/lightline.vim' "Barra de status
Plug 'severij/vadelma' " Esquema de color
Plug 'scrooloose/nerdtree' "Filetree
Plug 'scrooloose/nerdcommenter' "Comentarios
Plug 'vim-scripts/vim-auto-save' "Autoguardar archivos
Plug 'tpope/vim-fugitive' "Plugin GIT
Plug 'janko-m/vim-test'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } "Color
Plug 'aswathkk/DarkScene.vim'


colorscheme darkscene

set laststatus=2
set noshowmode
set statusline+=%#warningmsg#
set statusline+=%*


 settings de lightline
let g:lightline = {
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ],
            \   'right':[['syntastic','lineinfo'],
            \           ['percent'],['fileencoding'],['fileformat'], ],
            \ },
            \ 'component_function': {
            \ 'gitbranch': 'fugitive#head',
            \ 'syntastic': 'SyntasticStatuslineFlag' ,
            \ },
            \ 'colorscheme': 'darkscene',
            \ 'separator' : {'left':'','right':'' },
            \ 'subseparator': {'left':''},
            \ 'component_visible_condition' : {
            \           'relativepath':'&relativepath'
            \            }
            \ }
<

"Colores de terminal
if has('nvim') || has('termguicolors')
  set termguicolors
endif

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 0

filetype plugin on "Para nerd commenter


call plug#end()
:set mouse=a

