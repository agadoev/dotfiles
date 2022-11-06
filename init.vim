set number
set relativenumber
set tabstop=4
set shiftwidth=4
set smarttab
set mouse=a
set nofixendofline
set encoding=UTF-8

call plug#begin()
Plug 'arcticicestudio/nord-vim'
Plug 'akinsho/toggleterm.nvim'
Plug 'vim-airline/vim-airline'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'matbme/JABS.nvim'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scalameta/nvim-metals'
Plug 'nvim-lua/plenary.nvim'
call plug#end()

colorscheme gruvbox

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_theme='angr'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:vim_vue_plugin_config = { 
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

nnoremap <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

nnoremap <C-f> :Files<CR>
nnoremap <C-b> :Buffers<CR>
