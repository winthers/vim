execute pathogen#infect()
call pathogen#helptags()


set nocompatible

"===========================
" Mappings
"===========================

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

" Map ½ to something useful
map ½ $
cmap ½ $
imap ½ $

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
set ruler "show position
set cmdheight=2 "comand line height
set hidden "allows to close windows with unsaved changes in buffer.

"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar
"set guioptions-=r  "remove right-hand scroll bar
"set guioptions-=L  "remove left-hand scroll bar

if has('gui_running')
set guifont=consolas:h11
endif

" Remove anoying ding and flashes from vim
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" #Tips
" in visual mode o changes location of the cursor and lets you adjust selection in both directions.
" To reload and apply vimrc if currently active file :so %

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry



