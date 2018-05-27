call plug#begin('~/.local/share/nvim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'jiangmiao/auto-pairs'
	Plug 'w0rp/ale'
	Plug 'Shougo/deoplete.nvim'
	Plug 'zchee/deoplete-jedi'
	Plug 'carlitux/deoplete-ternjs'
	Plug 'pangloss/vim-javascript'
	Plug 'crusoexia/vim-monokai'
	Plug 'mxw/vim-jsx'
	Plug 'rust-lang/rust.vim'
	Plug 'racer-rust/vim-racer'
	Plug 'cespare/vim-toml'
	Plug 'alvan/vim-closetag'
	Plug 'wesQ3/vim-windowswap'
	Plug 'tpope/vim-commentary'
	Plug 'airblade/vim-gitgutter'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'jremmen/vim-ripgrep'
	Plug 'skielbasa/vim-material-monokai'
	Plug 'wincent/command-t'
call plug#end()

" Key remappings
:inoremap kj <Esc>
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set hidden
let g:racer_cmd = "/Users/hachtman/.cargo/bin/racer"
let g:ale_rust_cargo_check_all_targets = 1

let mapleader = "\<Space>"
nnoremap <leader>w :wa<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>l :ALEToggle<CR>
nnoremap <leader>d :qa<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>f :ALEFix<CR>
nnoremap <leader>c gcc<CR>
nnoremap <F7> :vertical resize-5<CR>
nnoremap <F9> :vertical resize+5<CR>

autocmd vimenter * NERDTree
map <leader>n :NERDTreeToggle<CR>

" let g:CommandTTraverseSCM = 'pwd'

let g:python3_host_prog = '/Users/hachtman/.pyenv/versions/3.6.1/bin/python'

" command t
set wildignore+=*/node_modules/*
set wildignore+=*/build/*
set wildignore+=*/coverage/*


"deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#include_keywords = 1
let g:deoplete#file#enable_buffer_path = 1

imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
" python
au BufNewFile,BufRead *.py,*.rs
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=99 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.jsx,*.css,*.scss
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=99 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\   'scss': ['stylelint'],
\   'python': ['flake8'],
\   'rust': ['cargo'],
\}

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'jsx': ['eslint'],
\   'css': ['stylelint'],
\   'scss': ['stylelint'],
\   'rust': ['rustfmt'],
\}

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_open_list = 1                                     
let g:ale_javascript_eslint_use_global = 1                     
let g:ale_list_window_size = 5                               
let g:ale_lint_on_text_changed = 0                          
let g:ale_lint_on_enter = 0                                   
let g:ale_lint_on_save = 1
let g:ale_scss_stylelint_use_global = 1

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx'
let g:closetag_xhtml_filenames = '*.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'

let NERDTreeShowHidden=1

syntax on
colorscheme material-monokai
set number
set t_ut=
set wildignore+=node_modules/**
set wildignore+=build/**
set ttyfast
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
