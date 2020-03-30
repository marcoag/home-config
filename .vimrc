set autoindent
set expandtab
set smartindent
set tabstop=2
set shiftwidth=2
set vb t_vb=
set ruler
set nohls
set incsearch
set nu
"set nowrap
:syntax enable
":set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
":set laststatus=2
au BufReadPost * if line("'\"") > 0 && 
  \ line("'\"") <= line("$") | exe "normal g'\"" | endif
autocmd FileType make setlocal noexpandtab
au BufRead,BufNewFile *.launch setfiletype xml
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
