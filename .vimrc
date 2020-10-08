set number
set mouse=a
set numberwidth=1
set clipboard+=unnamed  " use the clipboards of vim and win
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
" set noshowmode
" set relativenumber
set cursorline
set hlsearch

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

Plug 'pangloss/vim-javascript'  " javascript support
Plug 'leafgarland/typescript-vim' "typescript syntax
Plug 'vim-airline/vim-airline' 
Plug 'damage220/vim-finder'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'peitalin/vim-jsx-typescript'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" autocmd vimenter * colorscheme gruvbox
" "set background=dark
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
" let g:airline_powerline_fonts = 1
" let g:coc_disable_startup_warning = 1 
colorscheme challenger_deep

let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>tt :NERDTreeFind<CR>


nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>fs :Files . new<CR>
nmap <Leader>ft :Files<CR>

:imap ii <Esc>
"vmap <Leader>y "+y
"
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
vmap <leader>for  <Plug>(coc-format-selected)
nmap <leader>for  <Plug>(coc-format-selected)

command! Reload execute "source ~/.vimrc"
command! Config execute ":e ~/.vimrc"
