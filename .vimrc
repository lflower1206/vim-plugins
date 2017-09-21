:set nu

nmap <f5> :NERDTreeToggle<cr>
nmap <F8> :TagbarToggle<CR>

"""""""""" NerdTree
""""" open NERDTree automatically when vim starts up on opening a directory?

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"""""""""" vim-airline-themes
let g:airline_theme='light'

"""""""""" vim-colors-solarized
syntax enable
set background=dark
colorscheme solarized

"""""""""" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_typescript_checkers=['TSLint']

