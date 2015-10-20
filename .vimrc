call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
syntax on
filetype plugin indent on
filetype off
set nocompatible
set number
colorscheme molokai
let mapleader=","
map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
filetype plugin on
set ofu=syntaxcomplete
set mouse=a
set incsearch
set ignorecase
map <Leader>;g :set ignorecase<CR>
map <Leader>;s :set noignorecase<CR>
map <Leader>;c :colorscheme elflord<CR>
set wildmenu
set wildignore=*.swp,*.bak,*.pyc,*.class,*.o
"nnoremap ğ 10j 
"nnoremap ü 10k  
map <S-F11> :NERDTreeToggle <cr> 
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$', 'whoosh_index', 'xapian_index', '.*.pid', '*\.o$', '.*-fixtures-.*.json']
nnoremap Y y$
syntax enable
set backspace=indent,eol,start
    
    
set shiftwidth=4
set smarttab
set tabstop=4
set smartindent
set autoindent
set expandtab
set softtabstop=4
set hlsearch
map <Space> :noh<cr>
"set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set statusline=%n:\ %f%m%r%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%{getcwd()}]%=\ [%l-%L,%v][%p%%]

    
" Taglist variables
" Display function name in status bar:
let g:ctags_statusline=1
" Automatically start script
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

"Maximum text width to automatic linebreak
"set tw=80
"let g:pydiction_location = '/home/tyr/.vim/after/ftplugin/pydiction/complete-dict' 
let g:paydiction_menu_height = 10
if has("gui_running")
    set guioptions-=T
    winsize 170 30
    "colorscheme wombat
    "set background=dark
    "colorscheme solarized
    "set guifont=Consolas,\ Monaco\ 11
    "set guifont=Monaco:h12
    set guifont=Monaco\ 9
else 
    "colorscheme zellner
endif

set t_Co=256
let g:molokai_original = 0



map <A-1> :tabn 1<CR>
map <A-2> :tabn 2<CR>
map <A-3> :tabn 3<CR>
map <A-4> :tabn 4<CR>
map <A-5> :tabn 5<CR>
map <A-6> :tabn 6<CR>
map <A-7> :tabn 7<CR>
map <A-8> :tabn 8<CR>
map <A-9> :tabn 9<CR>

map <leader>r :set relativenumber<CR>
map <leader>R :set nu<CR>

map <leader>nw :set nowrap<CR>
map <leader>wr :set wrap<CR>


imap <c-j> <esc>ja
imap <c-k> <esc>ka

imap <c-h> <esc>ha
imap <c-l> <esc>la

imap <c-b> <esc>bi
imap <c-e> <esc>ea
imap <c-B> <esc>Bi
imap <c-E> <esc>Ea

map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l


"imap <c-e> <esc>dea
"imap <c-d> <esc>ciw
cmap <c-j><c-j> <c-r>=expand('%:p:h').'/'<cr>
"imap <c-h> <esc>bha

map <F5>5 :ConqueTermVSplit ipython<cr> 
map <F5>7 :ConqueTermVSplit python<cr> 
map <F5>6 :ConqueTermVSplit bash<cr> 

map <Leader>v :e $MYVIMRC<cr>

imap <c-a> <esc>0i

set backspace=indent,eol,start
syntax on


set title " change the terminal's title

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Paste from clipboard
map <leader>p "+gp
" Copy to clipboard
map <leader>y "+y

set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
" Quit window on <leader>q
nnoremap <leader>q :q<CR>
nnoremap <leader>s :w<CR>
nnoremap <F6> :GundoToggle<CR>
map <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


" Evoke a web browser
function! Browser ()
  let line0 = getline (".")
  let line = matchstr (line0, "http[^ ]*")
  :if line==""
  let line = matchstr (line0, "ftp[^ ]*")
  :endif
  :if line==""
  let line = matchstr (line0, "file[^ ]*")
  :endif
  let line = escape (line, "#?&;|%")
  " echo line
  exec ":silent !chromium-browser ".line ."&"
endfunction
map <Leader>w :call Browser ()<CR>
"imap <Leader><tab> <c-x><c-u>
imap <c-space> <c-x><c-u>

" Backups
set backup
set backupdir=~/.vimbackup/backup// " backups
set directory=~/.vimbackup/swap//   " swap files

:map <C-c>g :call RopeGotoDefinition()

autocmd! BufNewFile * silent! 0r ~/.vim/templates/templ.%:e
"set startofline "G" 

"pep8 shortcut's <leader>pep
"au BufReadPost * exe "normal G"

:command  Wa :wa 
:command  Q :q 
