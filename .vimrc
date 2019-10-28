syntax on
set autoindent 
set smarttab
set number
" use mouse to scroll like in any other program
set mouse=a
" update time for a snappy git gutter
set updatetime=100

hi! Visual term=reverse ctermbg=242 guibg=DarkGrey
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue

filetype plugin indent on
" Force the cursor onto a new line after 80 characters
" set textwidth=80

" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72

" Colour the 81st (or 73rd) column so that we don’t type over our limit
autocmd FileType gitcommit set colorcolumn=73

" In Git commit messages, also colour the 51st column (for titles)
autocmd FileType gitcommit set colorcolumn+=51

autocmd Filetype rust setlocal ts=4 sw=4 sts=4 expandtab

let g:rustfmt_autosave = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

map <C-p> :FZF<CR>

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'git@github.com:ervandew/supertab.git'
Plug 'git@github.com:airblade/vim-gitgutter.git'
Plug 'vim-airline/vim-airline'
Plug 'racer-rust/vim-racer'

call plug#end()
