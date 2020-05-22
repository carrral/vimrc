"------------- ------------
"       Custom vim
"------------- ------------


"   Encoding
set encoding=utf-8
set fillchars=vert:│

"   Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set scrolloff=3
set ruler
set nrformats-=octal


set backspace=indent,eol,start
set incsearch
set autoindent


"   Line Nr
set number
set cursorline

"   Text width
" set textwidth=74

"   Leader
let mapleader = ","

"   For loop Mapping
inoremap <Leader>fori for(int i=0;i< ;i++){}<ESC>i<CR><ESC>O
inoremap <Leader>forj for(int j=0;j< ;j++){}<ESC>i<CR><ESC>O

"   Expand brackets
inoremap {<CR> {<CR>}<ESC>O

"   Splitting settings
set splitbelow
set splitright

"   Recursive path
set path+=**

"   Wildmenu
set wildmenu


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

"   Clipboard Mapping
vnoremap <C-c> "+y
inoremap <C-v> <ESC>"+pa

"   Mapeo para Filetree
map <C-f> :NERDTreeToggle .<CR>

nnoremap <Leader>f :find  

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

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'artur-shaik/vim-javacomplete2'
"call vundle#end()



call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'artur-shaik/vim-javacomplete2', {'for':['java']}
Plug 'Dimercel/todo-vim', {'on': 'TODOToggle'}
Plug 'tpope/vim-surround'  " Surround para (),[],{},etc.
Plug 'tpope/vim-fugitive' "Plugin GIT
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-unimpaired'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-eunuch'


Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree' "Filetree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ludovicchabant/vim-gutentags'
Plug 'arzg/vim-rust-syntax-ext', {'for':['rust']}
Plug 'racer-rust/vim-racer', {'for':['rust']}
Plug 'rust-lang/rust.vim', {'for':['rust']}

" Colorschemes
Plug 'tomasr/molokai'
Plug 'chuling/vim-equinusocio-material'
Plug 'rafalbromirski/vim-aurora'
Plug 'arzg/vim-colors-xcode'
Plug 'vmchale/ion-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'sonph/onehalf'

" JS
Plug 'pangloss/vim-javascript', {'for': ['javascript']}
Plug 'gavocanov/vim-js-indent', {'for':['javascript']}

"Python
Plug 'davidhalter/jedi-vim', {'for':['python']}

"Linting
Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter' "Comentarios
Plug 'mileszs/ack.vim'
call plug#end()

packadd! matchit


syntax enable

  " Term colors
set termguicolors

" set background=black

hi Comment cterm=italic
" hi LineNr ctermbg=NONE guibg=NONE

" set term=screen-256color

"   Colorscheme
" let g:molokai_original = 1
" let g:equinusocio_material_darker = 1
" colorscheme xcodedarkhc
" colorscheme molokai
colorscheme gotham-new
" colorscheme dracula
" colorscheme equinusocio_material
" colorscheme behelit
" colorscheme onehalfdark
" colorscheme ion
" let g:xcodedarkhc_green_comments = 1



"   Devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_tabline = 1

"   Airline theme and settings
" let g:airline_theme = 'wombat'
" let g:airline_theme = 'behelit'
" let g:airline_theme = 'base16_adwaita'
" let g:airline_theme = 'gotham'
let g:airline_theme = 'zenburn'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline_left_sep = ''
" let g:airline_left_sep = ' '
" let g:airline_left_sep = '||'
let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
let g:airline_left_alt_sep = '|'
 " let g:airline_right_sep = ''
" let g:airline_right_sep = ' '

" let g:airline_right_sep = '||'
let g:airline_right_sep = ''
let g:airline_section_c = ''
"let g:airline_section_x = ''
let g:airline_section_y = '%{strftime("%H:%M")}'
let g:airline_section_z = ''
let g:airline_section_warning = ''
let g:airline#extensions#tabline#fnamemod=':t'
let airline#extensions#ale#error_symbol = ''
let airline#extensions#ale#warning_symbol = ''
let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }


"   Statusline settings
set noshowmode
set laststatus=2

let g:user_emmet_leader_key=','

"   IndentLine
let g:indentLine_char = '┆'

"   NERDTree settings
let g:NERDTreeMinimalUI = 1
let g:NERDTreeMinimalMenu = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeHighlightFolders = 1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '.git$']
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '

" omnifunc config
set omnifunc=syntaxcomplete#Complete
set complete-=i


" Guten tags
" Setup gutentags to use rusty-tags
if !exists("g:gutentags_project_info")
  let g:gutentags_project_info = []
endif
call add(g:gutentags_project_info, {'type': 'rust', 'file': 'Cargo.toml'})
let g:gutentags_ctags_executable_rust = $HOME.'/.vim/shims/rusttags.sh'

"   Jedi
let g:jedi#auto_initialization = 0
autocmd FileType python setlocal omnifunc=jedi#completions

"   Needed for Nerd commenter
filetype plugin indent on
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs=1

"   vim-todo settings
let g:todo_vertical=1
let g:todo_right=1

"   Settings para ALE
let g:ale_set_quickfix = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {'python':['black'],'java':['google_java_format'],'rust':['rustfmt'],'c':['clang-format'],'javascript':['eslint'] }

let g:ale_linters = { 'javascript':['eslint'] }
let g:ale_sign_error = '=>'


let g:ale_sign_warning = ' '
let g:ale_lint_on_text_changed = 'always'


"   Racer
let g:racer_cmd = '/home/carlos-II/.cargo/bin/racer'
let g:racer_experimental_completer = 1

"   Autoclose preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"   Sneak
let g:sneak#label = 1


"   Vim-plug settings
let g:plug_timeout = 300

"   Startify settings
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
let header_ascii_art_A = [
            \'                                                     ',
            \'                                                     ',
            \'         ██████╗              ██╗   ██╗██╗███╗   ███╗',
            \'        ██╔════╝              ██║   ██║██║████╗ ████║',
            \'        ██║         █████╗    ██║   ██║██║██╔████╔██║',
            \'        ██║         ╚════╝    ╚██╗ ██╔╝██║██║╚██╔╝██║',
            \'        ╚██████╗               ╚████╔╝ ██║██║ ╚═╝ ██║',
            \'         ╚═════╝                ╚═══╝  ╚═╝╚═╝     ╚═╝',
            \'                                                     ',
            \'           By: Carlos C.                             ']

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


let header_ascii_art_B = ['                                                                     ',
                \'                                                                     ',
                \'                                                                     ',
                \'         ________                ___      ___ ___  _____ ______      ',
                \'        |\   ____\              |\  \    /  /|\  \|\   _ \  _   \    ',
                \'        \ \  \___|  ____________\ \  \  /  / | \  \ \  \\\__\ \  \   ',
                \'         \ \  \    |\____________\ \  \/  / / \ \  \ \  \\|__| \  \  ',
                \'          \ \  \___\|____________|\ \    / /   \ \  \ \  \    \ \  \ ',
                \'           \ \_______\             \ \__/ /     \ \__\ \__\    \ \__\',
                \'            \|_______|              \|__|/       \|__|\|__|     \|__|',
                \'                                                                     ',
                \'                                                                     ',
                \'        By: Carlos C.                                                ',
                \'                                                                     ']

let g:startify_custom_header = header_ascii_art_VIM + startify#pad(startify#fortune#cowsay())


" Modified from http://dhruvasagar.com/2013/03/28/vim-better-foldtext
function! NeatFoldText()
  let indent_level = indent(v:foldstart)
  let indent = repeat(' ',indent_level)
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '-' . printf("%10s", lines_count . ' lines') . ' '
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return indent . foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()
