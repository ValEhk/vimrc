colorscheme elflord

set nocompatible

" 1 tab = 4 spaces (display, >> & <<, tab pressed)
set tabstop=4
set shiftwidth=4
set softtabstop=4
" Use space instead of tabs
set expandtab
" Use multiple of shiftwidth when identing with < or >
set shiftround

" Set auto-indent, smart-indent & auto wrap
set ai
set si
set wrap

" Linebreaks at 120 characters
set lbr
" set tw=120
set showbreak=\ \ 
set cpoptions+=n

" Set autoread when a fle is changed from the outside
set autoread

" :W sudo saves the file
command W w !sudo tee % > /dev/null

" Always show current position
set ruler

" disable mouse
if has('mouse')
    set mouse-=a
endif

" Hide buffer instead of closing it on buffer change
set hid

set nohlsearch

" Ignore case when searching in lowercase
set ignorecase
set smartcase

" Set incremental search
set incsearch

" Show matching brackets, ...
set showmatch

" Set UTF-8 as default encoding
set encoding=utf8

" Treat long lines as break lines
map j gj
map k gk

" Set hybrid line number
set relativenumber
set number

" Switch between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Remap K + J
noremap <C-down> J
noremap <C-M> K

" Jump 10 lines
map J 10j
map K 10k

" Always show status line
set laststatus=2

" Set syntax highlighting + line numbers
syntax enable

" No backup file
set nobackup
set noswapfile

" Use 'g' flag by default in :s/foo/bar/g
set gdefault

" Remap keys
" map Y y^

" Specific filetypes
autocmd BufNewFile,BufRead *.h setlocal ft=c
autocmd BufNewFile,BufRead *.cls setlocal ft=tex
autocmd BufNewFile,BufRead *.tex setlocal ft=tex

" Set default commentary to #
autocmd FileType text setlocal commentstring=#\ %s
augroup filetypedetect
    au BufRead,BufNewFile * setf text
augroup END


" Change cursor when in Insert mode
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkred guibg=darkred
match ExtraWhitespace /\s\+$/

" Highlight cursor line
hi CursorLine   cterm=bold
set cursorline

" Disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" --------------------------------------------------------------------------- "

" Plugins "
call plug#begin()
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'https://github.com/tpope/vim-fugitive'
    Plug 'https://github.com/scrooloose/nerdtree'
    Plug 'https://github.com/tpope/vim-surround'
    Plug 'https://github.com/mbbill/undotree'
    Plug 'https://github.com/tpope/vim-commentary'
    Plug 'https://github.com/vimwiki/vimwiki'
    " Plug 'https://github.com/fidian/hexmode'
    " Plug 'Valloric/YouCompleteMe'
call plug#end()

" FZF conf
map <C-f> :FZF ~<CR>

" NerdTree conf
map <C-n> :NERDTree<CR>

" Airline conf
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

let g:airline_theme='behelit'
let g:airline_section_c = '%f %m'
let g:airline_section_x = ' '
let g:airline_section_y = '0x%04B - %{&fileformat}%  [%{&fileencoding?&fileencoding:&encoding}]'
let g:airline_section_z = '%c  -  %l / %L  [%P]'
let g:airline_section_warning=''
let g:airline_section_error=''

" vimwiki conf
filetype plugin on
let g:vimwiki_list = [{'path':'~/Documents/Wiki',
    \ 'path_html':'~/Documents/Wiki/export/html',
    \ 'syntax':'markdown', 'ext':'.md'}]

" Docstring displayed as comment in python
" syn region Comment start="\"\"\"" end="\"\"\""

