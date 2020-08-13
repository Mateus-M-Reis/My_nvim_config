call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'mattn/emmet-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'joshdick/onedark.vim'
Plug 'liuchengxu/space-vim-dark'

Plug 'Yggdroot/indentLine'

Plug 'jiangmiao/auto-pairs'
"Plug 'mxw/vim-jsx'
"Plug 'pangloss/vim-javascript'
" Plug 'derekwyatt/vim-scala'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'machakann/vim-sandwich'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'

Plug 'KabbAmine/vCoolor.vim'

Plug 'norcalli/nvim-colorizer.lua'

Plug 'kaicataldo/material.vim'

call plug#end()

map <C-\> :NERDTreeToggle<CR>
map <F3> :w<CR>
map <F4> :q<CR>
map <esc> :noh<cr>
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

let g:material_theme_style = 'darker'
colorscheme material
"let g:space_vim_dark_background = 234
"color space-vim-dark

set number
set foldmethod=indent
set nofoldenable
set noshowcmd
set noshowmode
set cmdheight=1
"set noruler
"set laststatus=0
"set shortmess+=F
set termguicolors
lua require'colorizer'.setup()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '<'
"let g:airline_extensions = ['vim-fugitive']
"let g:airline_inactive_collapse=1
"let g:airline_disable_statusline = 1
"let w:airline_skip_empty_sections = 0
"let g:airline_statusline_ontop=0
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
"let g:deoplete#enable_at_startup = 1 
"let g:airline#extensions#denite#enabled = 1
"let g:airline#extensions#ctrlspace#enabled = 1
"let g:airline_theme='bubblegum'
"let g:airline_theme = 'material'
let g:AutoPairsShortcutToggle = '<M-f>'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
"let g:python3_host_prog = '/home/moises/anaconda3/bin/python'

" floatterm
let g:floaterm_keymap_new = '<A-t>'
let g:floaterm_keymap_prev = '<A-h>'
let g:floaterm_keymap_next = '<A-l>'
let g:floaterm_keymap_hide = '<A-j>'
let g:floaterm_keymap_show = '<A-k>'
let g:floaterm_keymap_kill = '<A-k>k'
"let g:floaterm_keymap_toggle = '<A-t>'
let g:floaterm_position = 'right'
let g:floaterm_height = 0.90
let g:floaterm_width = 0.65
"let g:floaterm_shell = '' 

let g:vcoolor_custom_picker = 'zenity --title "custom" --color-selection --show-palette --color '
let g:user_emmet_leader_key='<c-m>'
let g:user_emmet_mode='a'   
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<A-c>'

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=3
" when indenting with '>', use 4 spaces width
set shiftwidth=3
" On pressing tab, insert 4 spaces
set expandtab

"let g:user_emmet_settings = {
"\  'html' : {
"\    'indentation' : '  '
"\  }
"\}
au BufRead,BufNewFile *.sbt set filetype=scala

"autocmd FileType json syntax match Comment +\/\/.\+$+

noremap <A-Left>  :-tabmove<cr>
noremap <A-Right> :+tabmove<cr>
noremap <A-y> "+y
noremap <A-p> "+p
noremap <A-Y> "+yy
noremap <A-P> "+p
"noremap <A-y>y "+y

"CoC""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <silent><expr> <C-space> coc#refresh()

"GoTo code navigation
nmap <leader>g <C-o>
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

"show all diagnostics.
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>
"manage extensions.
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
"CoC""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fzf"""""""""""""""""""""""""'""'"""""""""""""""""""""""""
map ; :Files<CR>
"fzf"""""""""""""""""""""""""'""'"""""""""""""""""""""""""
noremap <A-p>i :CocCommand python.setInterpreter<cr> 

