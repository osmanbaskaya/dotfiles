" Disable the highlight of search
map <Space> :noh<cr>

" Line numbers are visible
set number

" :Ws sudo saves the file 
" (useful for handling the permission-denied error)
command Ws w !sudo tee % > /dev/null

" Height of the command bar
set cmdheight=1

" Delete the annoying command.
delcommand W

" Error-tolerance savings.
command W :w
command Wa :wa

" Default.
set nohid

colorscheme molokai

" Add mouse interaction.
set mouse=a

set wildignore=*.o,*~,*.pyc,*.swp,*.bak,*.class

set softtabstop=4

vnoremap <C-c> :w !pbcopy<cr><cr>
" noremap <C-v> :r !pbpaste<CR><CR>
