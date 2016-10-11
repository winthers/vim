set nocompatible


let mapleader = ","
imap <S-Space> <Esc>
imap <C-Space> <Esc>
imap <C-k> <Esc>


" Mapping to move lines : http://vim.wikia.com/wiki/Moving_lines_up_or_down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv



syntax on		        
set hlsearch  		  " Highlight search
set incsearch       " Highlight as you type
set relativenumber  " Line numbers
set number 		      " when combiner with relative number shows current line number.
set tabstop=2 shiftwidth=2 expandtab
set nowrap
set backspace=indent,eol,start " Make backspace work
set wildmenu
set wildmode=list:longest,full
set encoding=utf8
set ruler
set cmdheight=2


if has('gui_running')
  set guifont=consolas:h11
endif


" Remove anoying ding and flashes from vim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif




" #Tips
" in visual mode o changes location of the cursor and lets you adjust selection in both directions.
" To reload and apply vimrc if currently active file :so %
