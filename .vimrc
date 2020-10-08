set number
set mouse=a
set numberwidth=1
set clipboard+=unnamed  " use the clipboards of vim and win
syntax enable
set showcmd
set ruler
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
set showmatch
set ts=2 sw=2 et
set laststatus=2
" set noshowmode
" set relativenumber
set cursorline
set hlsearch

call plug#begin('~/.vim/plugged')

" Temas
Plug 'morhetz/gruvbox'
"Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

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
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/matchit.zip'
Plug 'preservim/nerdcommenter'
Plug 'kien/rainbow_parentheses.vim'

call plug#end()

let g:gruvbox_contrast_dark = "hard"
autocmd vimenter * colorscheme gruvbox 
" "set background=dark
let NERDTreeQuitOnOpen=1
let NERDTreeShowLineNumbers=1
let g:airline_powerline_fonts = 1
" let g:coc_disable_startup_warning = 1 
"  colorscheme challenger_deep
let g:vim_jsx_pretty_colorful_config = 1 
let g:indent_guides_enable_on_vim_startup = 1

" tabulacion
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=none

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

" () [] {}
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces
