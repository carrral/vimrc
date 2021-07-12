" File              : .vimrc
" Author            : Carlos Carral <carloscarral13@gmail.com>
" Date              : 10.08.2020
" Last Modified Date: 20/04/2021
"------------- ------------
"       Custom vim
"------------- ------------

set conceallevel=3

filetype plugin indent on

"   Encoding
set encoding=UTF-8
set fillchars=vert:│

"   Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set scrolloff=3
set ruler
set nrformats-=octal

"======================== vim/nvim ============================
if has('nvim')
    set signcolumn=no
    set guicursor=
    tnoremap <Esc><Esc> <C-\><C-n>
else
    set signcolumn=number
endif


"======================== coc-nvim=============================
set hidden
set nobackup
set updatetime=300
set shortmess+=c

imap <C-l> <Plug>(coc-snippets-expand)

nmap <F9> <Plug>(coc-rename)

" GoTo code navigations.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <F9> <Plug>(coc-rename)

" Map function and class text objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use K to show documentation in preview window.
nmap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

let g:coc_filetype_map = {'styl': 'css'}
"==============================================================

set backspace=indent,eol,start
set incsearch
set autoindent


"   Line Nr
set relativenumber
set number
set cursorline

"   Text width
" set textwidth=74

"   Leader
let mapleader = ","

"   Splitting settings
set splitbelow
set splitright

"   Recursive path
set path+=**

"   Wildmenu
set wildmenu

let g:termdebug_wide = 1


"   Mapping kj -> ESC 
inoremap kj <ESC>
inoremap KJ <ESC>

"   Mapping cc-> :commmand
map cc <ESC> :

"   Buffer change
nnoremap <leader>b :ls<CR>:b<space>

"   Write key-binding
nnoremap <Leader>w :w<CR>

"   Tag kb
nnoremap <Leader>t :tag<Space>

"   vsplit kb
nnoremap <Leader>v :vsplit<CR>

"   Git maps
nnoremap <Leader>gs :Gstatus<CR> 
nnoremap <Leader>gc :Git commit<CR> 

"   Unmap J deletion
map J <NOP>


"   Clipboard Mapping
vnoremap <C-c> "+y
inoremap <C-v> <ESC>"+pa

"   Mapeo para Filetree
" map <C-f> :NERDTreeToggle .<CR>
map <M-f> :NERDTreeToggle .<CR>

nnoremap <Leader>f :find 
nnoremap <Leader>e :edit 

"   Mapeos para cambiar de tabs  
map <C-l> gt
map <C-n> gT

"   Mapeos para cambiar de buffer
map <C-w> <C-w><C-w>


"   Autowrite & Autoread
set autoread
set autowrite

"   Para vundle
filetype off

"===================== Plugins ========================
call plug#begin('~/.vim/plugged')
Plug 'alpertuna/vim-header'
Plug 'jiangmiao/auto-pairs'
Plug 'andymass/vim-matchup'
Plug 'mhinz/vim-startify'
Plug 'Dimercel/todo-vim', {'on': 'TODOToggle'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-eunuch'
Plug 'preservim/tagbar'
Plug 'kkoomen/vim-doge',

" Telescope y otros para nvim 0.5
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Plug 'neovim/nvim-lspconfig'
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
" kyazdani42/nvim-tree.lua
" packer

Plug 'mattn/emmet-vim', {'for':['html', 'html.handlebars', 'vue','php']}
Plug 'scrooloose/nerdtree' "Filetree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ludovicchabant/vim-gutentags'

" C
" Plug 'WolfgangMehner/c-support' ,{'for': ['c']}

" Rust
Plug 'arzg/vim-rust-syntax-ext', {'for':['rust']}
Plug 'rust-lang/rust.vim', {'for':['rust']}

" Colorschemes
" Plug 'tomasr/molokai'
Plug 'romgrk/doom-one.vim'
Plug 'chuling/vim-equinusocio-material'
" Plug 'arzg/vim-colors-xcode'
Plug 'vmchale/ion-vim' , {'for':['javascript']}
Plug 'cormacrelf/vim-colors-github'
Plug 'ackyshake/Spacegray.vim'
Plug 'tomasiser/vim-code-dark'

" JS
Plug 'pangloss/vim-javascript', {'for': ['javascript']}
Plug 'gavocanov/vim-js-indent', {'for':['javascript']}
Plug 'mustache/vim-mustache-handlebars'

" Latex
Plug 'lervag/vimtex', {'for':['latex','tex','plaintex']}

" Matlab
Plug 'daeyun/vim-matlab'

" Linting
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter' "Comentarios
Plug 'mileszs/ack.vim'
Plug 'ryanoasis/vim-devicons'

" Fixer
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
call plug#end()


"===========================================================


syntax enable

" ================ vim-header ====================
let g:header_field_author = 'Carlos Carral'
let g:header_field_author_email = 'carloscarral13@gmail.com'
let g:header_field_modified_by = 0
let g:header_field_timestamp_format = '%d/%m/%Y'
let g:header_auto_add_header = 0
" ================================================

"===================== vimtex =================================
let g:tex_flavor = 'latex'
"==============================================================

" ================ vim-man ====================
map <Leader>k <Plug>(Man)
" =============================================

  " Term colors
set termguicolors

" set background=black

hi Comment cterm=italic
" hi LineNr ctermbg=NONE guibg=NONE

" set term=screen-256color

"===================== colorschemes ========================
" let g:molokai_original = 1
" let g:equinusocio_material_darker = 1
" colorscheme xcodedarkhc
" colorscheme molokai
" colorscheme tokyonight
" colorscheme equinusocio_material
colorscheme behelit
" colorscheme onehalfdark
" colorscheme github
" colorscheme codedark
"===========================================================



"   Devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

"===================== airline ========================
" let g:airline_theme = 'wombat'
let g:airline_theme = 'behelit'
" let g:airline_theme = 'base16_adwaita'
" let g:airline_theme = 'zenburn'
" let g:airline_theme = 'nord'
" let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#gutentags#enabled = 1
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
" let g:airline_left_sep = ''
" let g:airline_left_sep = ' '
" let g:airline_left_sep = '||'
let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_left_alt_sep = '|'

 " let g:airline_right_sep = ''
" let g:airline_right_sep = ' '
" let g:airline_right_sep = '||'
let g:airline_right_sep = ''
" let g:airline_right_alt_sep = '' 
" let g:airline_right_alt_sep = '' 
let g:airline_section_c = ''
"let g:airline_section_x = ''
let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline_section_z = ''
let g:airline_section_warning = ''
let g:airline#extensions#tabline#fnamemod=':t'
" let airline#extensions#ale#warning_symbol = ''

"===========================================================


"===================== statusline ========================
set noshowmode
set laststatus=2
"==========================================================

"===================== vim-test  ==========================
let test#strategy = "neovim"
"==========================================================

"===================== emmet ========================
let g:user_emmet_leader_key=','
"====================================================


"===================== tagbar ========================
noremap <M-t> :TagbarToggle<CR>
"====================================================

"===================== NERDTree ========================
let g:NERDTreeLimitedSyntax = 1
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeHighlightFolders = 1
let g:NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git$']
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '
"===========================================================


"===================== omnifunc ========================
set omnifunc=syntaxcomplete#Complete
set complete-=i
"===========================================================


"===================== gutentags ==========================
if !exists("g:gutentags_project_info")
  let g:gutentags_project_info = []
endif
call add(g:gutentags_project_info, {'type': 'rust', 'file': 'Cargo.toml'})
let g:gutentags_ctags_executable_rust = $HOME.'/.vim/shims/rusttags.sh'
"===========================================================



"===================== NERDComment =========================
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs=1
"===========================================================



"===================== vim-todo ============================
let g:todo_vertical=1
let g:todo_right=1
"===========================================================

"===================== ale =================================
" let g:ale_set_quickfix = 0
" let g:ale_enabled = 1
" let g:ale_fix_on_save = 1
" let g:ale_fixers = {'java':['google_java_format'],'php':['php_cs_fixer', 'prettier'],'rust':['rustfmt'],'c':['clang-format'],'javascript':['prettier'], 'vue': ['prettier'],'html':['prettier'],'json': ['fixjson'], 'sh':['shfmt'], 'python':['black']}
" let g:ale_rust_cargo_check_all_targets = 1

" let g:ale_linters = { 'javascript':['eslint'] ,'vue': ['eslint']}
" let g:ale_sign_error = '=>'


" let g:ale_sign_warning = ' '
" let g:ale_lint_on_text_changed = 'always'
"===========================================================

"===================== vim-codefmt =========================
call glaive#Install()
augroup autoformat_settings
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

Glaive codefmt google_java_executable="java -jar /home/carlos-II/bin/google-java-format-1.10.0-all-deps.jar"
"===========================================================

"================== recognize header files as C ============
augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
"===========================================================


"   Autoclose preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"   Sneak
let g:sneak#label = 1

" Matlab settings
let g:matlab_server_launcher = 'tmux' 


"   Vim-plug settings
let g:plug_timeout = 300

"   Startify settings
"===================== startify ========================
let g:startify_change_to_dir = 0
let g:startify_session_autoload = 1
let g:startify_bookmarks = [{'v':'~/.vimrc'}]
let g:startify_lists = [
                    \ {'type': 'dir',   'header': ['        '.split(getcwd(),"\/")[-1]]},
                    \ {'type': 'sessions',   'header': ['        Sesiones']},
                    \ {'type': 'bookmarks',   'header': ['        Bookmarks']},
                    \ ]
let g:startify_fortune_use_unicode = 1
let g:startify_padding_left = 8
let g:startify_files_number = 5
let header_ascii_art_VIM = [
            \'                                                     ',
            \'                                                     ',
            \'              ██╗   ██╗██╗███╗   ███╗                ',
            \'              ██║   ██║██║████╗ ████║                ',
            \'              ██║   ██║██║██╔████╔██║                ',
            \'              ╚██╗ ██╔╝██║██║╚██╔╝██║                ',
            \'               ╚████╔╝ ██║██║ ╚═╝ ██║                ',
            \'                ╚═══╝  ╚═╝╚═╝     ╚═╝                ',
            \'                                                     ',
            \'                                                     ']


let g:startify_custom_header = header_ascii_art_VIM + startify#pad(startify#fortune#cowsay())
"===========================================================


runtime plugin/dragvisuals.vim                                  
vmap  <expr>  <LEFT>   DVB_Drag('left')                         
vmap  <expr>  <RIGHT>  DVB_Drag('right')                        
vmap  <expr>  <DOWN>   DVB_Drag('down')                         
vmap  <expr>  <UP>     DVB_Drag('up')                           
vmap  <expr>  D        DVB_Duplicate()                          

function Fecha()
    read !date
endfunction 

command! Fecha call Fecha()

