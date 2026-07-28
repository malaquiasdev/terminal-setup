" ==============================================================================
" ⌨️ Self-Contained Vim / Neovim Configuration (Zero External Plugin Required)
" Location: ~/.vimrc
" Compatible with: Vim 8+, Neovim
" ==============================================================================

" --- General Settings ---
set nocompatible
filetype plugin indent on
syntax on

set encoding=utf-8
set fileencodings=utf-8,latin1
set hidden
set nobackup
set nowritebackup
set noswapfile
set autoread
set updatetime=300
set timeoutlen=500
set backspace=indent,eol,start
set mouse=a

" --- UI & Aesthetics ---
set number
set relativenumber
set cursorline
set showcmd
set showmode
set wildmenu
set wildmode=longest,list,full
set scrolloff=8
set sidescrolloff=8
set signcolumn=yes

" Enable 24-bit TrueColor if supported
if has("termguicolors")
  set termguicolors
endif

" Fallback dark background theme
set background=dark
colorscheme habamax

" --- Search Settings ---
set ignorecase
set smartcase
set hlsearch
set incsearch

" --- Indentation & Formatting ---
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent
set wrap

" --- Keybindings ---
let mapleader = " "

" Clear search highlights with <Leader>h
nnoremap <Leader>h :nohlsearch<CR>

" Window Navigation (Ctrl + h/j/k/l)
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Window Splitting
nnoremap <Leader>sv :vsplit<CR>
nnoremap <Leader>sh :split<CR>

" Netrw File Explorer Toggle (<Leader>e)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
nnoremap <Leader>e :Lexplore<CR>

" Quick Save / Quit
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" --- Custom Pure Statusline (Tokyo Night Palette) ---
function! GitBranch()
  let l:branch = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
  return strlen(l:branch) > 0 ? '  ' . l:branch : ''
endfunction

set laststatus=2
set statusline=
set statusline+=%#PmenuSel#\ %M%t\ %#LineNr#
set statusline+=%{GitBranch()}
set statusline+=%#CursorLine#\ %r%h%w
set statusline+=%=
set statusline+=%#Pmenu#\ %Y\ 
set statusline+=%#PmenuSel#\ %l:%c\ (%p%%)\ 

" --- Autocommands ---
augroup CustomAutocmds
  autocmd!
  " Strip trailing whitespace on save
  autocmd BufWritePre * %s/\s\+$//e
  " Highlight line on active window
  autocmd WinEnter * set cursorline
  autocmd WinLeave * set nocursorline
augroup END
