""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GLOBAL SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" VIM, not VI
set nocompatible

" General appearance and behaviour
filetype plugin indent on
syntax on
set visualbell t_vb=
set noerrorbells
set ruler
set showcmd
set showmatch
set wildmenu
set wildmode=list:longest,full
set backspace=indent,eol,start
set nowrap
set linebreak
set lazyredraw

set nomodeline

" MOUSE with VIM ! (YES)
" set mouse=a
" set ttymouse=xterm2
set scrolloff=1

" Indentation options
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
"set virtualedit=block
set virtualedit=all
set equalprg=

" Search options
set incsearch
set hlsearch
set ignorecase

" Print options ...
set printoptions=header:0

" This is useful for debugging
" set verbose=9

if v:version >= 700
  set spellcapcheck=
endif

if has('gui_running')
  " nothing please
  set guioptions=
  " add ability to copy into clipboard in both mode and mode-less, menu and
  " grayed-out menu items rather than not shown menu items
  set guioptions+=Aamg
  set guifont=Inconsolata\ 12
endif

if $TERM == "xterm-256color"
  colorscheme 256_desert
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" F-KEYS MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <F2> :set spell!<CR>

"nmap <F5>   -- mapped for SpaceHi
nmap <F6>   :call Toggle_syntax()<CR>
nmap <F7>   :set wrap!<CR>
nmap <F8>   :set paste!<CR>

nmap <ESC>l :set list!<CR>
nmap <ESC>n :set number!<CR>
nmap <ESC><SPACE> :nohl<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TOGGLERS -- for F-keys
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! Toggle_syntax()
  if has("syntax_items")
    syntax off
    echo "syntax off"
  else
    syntax enable
    echo "syntax on"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMA MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" STRIP -- EMPTY LINE ENDINGS
nmap _$ :% s_\s\+$__g <CR>
vmap _$ :  s_\s\+$__g <CR>
" STRIP -- EMPTY LINE BEGINNINGS
nmap _^ :% s_^\s\+__g <CR>
vmap _^ :  s_^\s\+__g <CR>

" COMMATIZE
vmap ,, :! paste -s -d, -<CR>
" QUOTISIZE
vmap ,' :! awk '{print "'\''"$0"'\''"}'<CR>
vmap ," :! awk '{print "\""$0"\""}'<CR>
" SURROUND
vmap S :! awk '{print ""$0""}'<LEFT><LEFT><LEFT>
" AWK
vmap ,<TAB>a :!awk -F'	' '{print }'<LEFT><LEFT>
vmap ,a      :!awk '{print }'<LEFT><LEFT>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OTHER MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" easier to reach, overrides TOP and BOTTOM of screen
map H ^
map L $

" display line up/down (not actual)
map <up> gk
map <down> gj

" search next/previous -- center in page
nmap n nzz
nmap N Nzz
nmap * *Nzz

" switch to other window, make it maximum height
nmap <ESC>w <C-w>w<C-w>_

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIMDIFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <ESC>du :diffupdate<CR>
nmap <ESC>do :%diffget<CR>

set diffopt=filler,iwhite

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPACEHI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile,BufReadPost,FilterReadPost,FileReadPost,Syntax * SpaceHi
au FileType help NoSpaceHi
au FileType diff NoSpaceHi
au FileType scratch NoSpaceHi

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set in variables.sh
let g:sql_type_default=$DB_ADAPTER

vmap # <ESC>:call NERDComment(1, "toggle")<CR>
nmap # V#

"===================================================================================
"         FILE:  .vimrc
"  DESCRIPTION:  suggestion for a personal configuration file ~/.vimrc
"       AUTHOR:  Dr.-Ing. Fritz Mehner
"      CREATED:  04.04.2009
"     REVISION:  $Id: customization.vimrc,v 1.3 2009/07/04 10:47:41 mehner Exp $
"===================================================================================
"
"===================================================================================
" GENERAL SETTINGS
"===================================================================================

"-------------------------------------------------------------------------------
" Use Vim settings, rather then Vi settings.
" This must be first, because it changes other options as a side effect.
"-------------------------------------------------------------------------------
set nocompatible
"
"-------------------------------------------------------------------------------
" Enable file type detection. Use the default filetype settings.
" Also load indent files, to automatically do language-dependent indenting.
"-------------------------------------------------------------------------------
filetype  plugin on
filetype  indent on
"
"-------------------------------------------------------------------------------
" Switch syntax highlighting on.
"-------------------------------------------------------------------------------
syntax    on            
"
" Platform specific items:
" - backupdir: central backup directory (has to be created)
" - directory: central swap directory (has to be created))
" - default dictionary
" Uncomment your choice.  
if  has("win16") || has("win32")     || has("win64") || 
  \ has("win95") || has("win32unix")
    "
    runtime mswin.vim
    set directory=$TMP\\\\,c:\\tmp\\\\,.
    set backupdir =$VIM\\vimfiles\\backupdir\\,C:\\tmp\\\\,.
    set dictionary=$VIM\\vimfiles\\wordlists\\english.list
else
    set directory=$TMP//,.
    set backupdir=$HOME/.vim.backupdir//,/tmp//,.
    set dictionary=$HOME/.vim/wordlists/english.list
endif
"
" Using a backupdir under UNIX/Linux: you may want to include a line similar to
"   find  $HOME/.vim.backupdir -name "*" -type f -mtime +60 -exec rm -f {} \;
" in one of your shell startup files (e.g. $HOME/.profile)
"
"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
set autoindent                  " copy indent from current line
set autoread                    " read open files again when changed outside Vim
set autowrite                   " write a modified buffer on each :next , ...
set backspace=indent,eol,start  " backspacing over everything in insert mode
set backup                      " keep a backup file
set browsedir=current           " which directory to use for the file browser
set complete+=k                 " scan the files given with the 'dictionary' option
set history=50                  " keep 50 lines of command line history
set hlsearch                    " highlight the last used search pattern
set incsearch                   " do incremental searching
set listchars=tab:>.,eol:\$     " strings to use in 'list' mode
"set mouse=a                     " enable the use of the mouse
set nowrap                      " do not wrap lines
set popt=left:8pc,right:3pc     " print options
set ruler                       " show the cursor position all the time
set shiftwidth=2                " number of spaces to use for each step of indent
set showcmd                     " display incomplete commands
set smartindent                 " smart autoindenting when starting a new line
set tabstop=2                   " number of spaces that a <Tab> counts for
set visualbell                  " visual bell instead of beeping
set wildignore=*.bak,*.o,*.e,*~ " wildmenu: ignore these extensions
set wildmenu                    " command-line completion in an enhanced mode
"
"===================================================================================
" BUFFERS, WINDOWS
"===================================================================================
"
"-------------------------------------------------------------------------------
" The current directory is the directory of the file in the current window.
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufEnter * :lchdir %:p:h
endif
"
"-------------------------------------------------------------------------------
" close window (conflicts with the KDE setting for calling the process manager)
"-------------------------------------------------------------------------------
 noremap  <C-Esc>       :close<CR>
inoremap  <C-Esc>  <C-C>:close<CR>
"
"-------------------------------------------------------------------------------
" Fast switching between buffers
" The current buffer will be saved before switching to the next one.
" Choose :bprevious or :bnext
"-------------------------------------------------------------------------------
 noremap  <silent> <s-tab>       :if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
inoremap  <silent> <s-tab>  <C-C>:if &modifiable && !&readonly && 
     \                      &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
"
"-------------------------------------------------------------------------------
" Leave the editor with Ctrl-q (KDE): Write all changed buffers and exit Vim
"-------------------------------------------------------------------------------
nnoremap  <C-q>    :wqall<CR>
"
"-------------------------------------------------------------------------------
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
"-------------------------------------------------------------------------------
if has("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif
endif " has("autocmd")
"
"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  call file explorer Ex
"    F4   -  show tag under curser in the preview window (tagfile must exist!)
"    F5   -  open quickfix error window
"    F6   -  close quickfix error window
"    F7   -  display previous error
"    F8   -  display next error   
"-------------------------------------------------------------------------------
"
map   <silent> <F2>        :write<CR>
map   <silent> <F3>        :Explore<CR>
"nmap  <silent> <F4>        :exe ":ptag ".expand("<cword>")<CR>
map   <silent> <F5>        :copen<CR>
map   <silent> <F6>        :cclose<CR>
map   <silent> <F7>        :cp<CR>
map   <silent> <F8>        :cn<CR>
"
imap  <silent> <F2>   <Esc>:write<CR>
imap  <silent> <F3>   <Esc>:Explore<CR>
"imap  <silent> <F4>   <Esc>:exe ":ptag ".expand("<cword>")<CR>
imap  <silent> <F5>   <Esc>:copen<CR>
imap  <silent> <F6>   <Esc>:cclose<CR>
imap  <silent> <F7>   <Esc>:cp<CR>
imap  <silent> <F8>   <Esc>:cn<CR>
"-------------------------------------------------------------------------------
" autocomplete parenthesis, brackets and braces
"-------------------------------------------------------------------------------
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
"
vnoremap ( s()<Esc>P
vnoremap [ s[]<Esc>P
vnoremap { s{}<Esc>P
"
"-------------------------------------------------------------------------------
" autocomplete quotes
"-------------------------------------------------------------------------------
vnoremap  '  s''<Esc>P<Right>
vnoremap  "  s""<Esc>P<Right>
vnoremap  `  s``<Esc>P<Right>
"
inoremap	'  '<Esc>:call QuoteInsertionWrapper("'")<CR>a
inoremap	"  "<Esc>:call QuoteInsertionWrapper('"')<CR>a
inoremap	`  `<Esc>:call QuoteInsertionWrapper('`')<CR>a
"
"-------------------------------------------------------------------------------
" Add a second quote only if the left and the right character are not keyword
" characters.
"-------------------------------------------------------------------------------
function! QuoteInsertionWrapper (quote)
	let	col	= col('.')
	if getline('.')[col-2] !~ '\k' && getline('.')[col] !~ '\k'
		normal ax
		exe "normal r".a:quote."h"
	end
endfunction    " ----------  end of function QuoteInsertionWrapper  ----------
"
"===================================================================================
" VARIOUS PLUGIN CONFIGURATIONS
"===================================================================================
"            
" --empty --
"                         
"-------------------------------------------------------------------------------
" taglist.vim : toggle the taglist window
"-------------------------------------------------------------------------------
" noremap <silent> <F11>  <Esc><Esc>:Tlist<CR>
"inoremap <silent> <F11>  <Esc><Esc>:Tlist<CR>

" set by Shawn
set viminfo='1000,f1,\"500,:100,/100
set shortmess+=r
set showmode
set smartcase
set whichwrap=h,l,~,[,]
noremap Y y$

nnoremap \tp :set invpaste paste?<CR>
nmap <F9> \tp
imap <F9> <C-O>\tp
set pastetoggle=<F9>

" abbreviations
iabbrev ssgm Shawn.Skriver@gmail.com
iabbrev sig -Shawn Skriver

