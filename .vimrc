set nocompatible
filetype off
set rtp+=/usr/local/opt/fzf
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
" We could also add repositories with a ".git" extension
"Plugin 'scrooloose/syntastic'
" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'w0rp/ale'
Plugin 'Buffergator'
"Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/Solarized'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'gioele/vim-autoswap'
Plugin 'thoughtbot/vim-rspec'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rizzatti/dash.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'Valloric/YouCompleteMe'
Plugin 'prettier/vim-prettier'
Plugin 'ervandew/supertab'
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'
let g:jsx_ext_required = 0
set t_Co=256
set background=dark
set hlsearch
set laststatus=2
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set cursorline
set cursorcolumn
set textwidth=80
set colorcolumn=+1
set nosmarttab
colorscheme solarized

map <C-n> :NERDTreeToggle<CR>
noremap <C-h> :bp<CR>
noremap <C-l> :bn<CR>
noremap <C-p> :FZF<CR>
let g:solarized_termcolors=16
let mapleader = "\<Space>"
let g:autoswap_detect_tmux = 1
nnoremap <Leader>n :tabedit<CR>
nnoremap <Leader>. :tabn<CR>
nnoremap <Leader>, :tabp<CR>
nnoremap <Leader>w :tabclose<CR>
nnoremap <Leader>s :w!<CR>
nnoremap <Leader>q :q!<CR>
inoremap jk <ESC>

" copying to buffer
vmap <Leader>y "*y
vmap <Leader>d "*d
nmap <Leader>p "*p
nmap <Leader>P "*P
" Tmux window switch 
let g:tmux_navigator_no_mappings = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

nnoremap <silent> <C-w>h :TmuxNavigateLeft<CR>
nnoremap <silent> <C-w>j :TmuxNavigateDown<CR>
nnoremap <silent> <C-w>k :TmuxNavigateUp<CR>
nnoremap <silent> <C-w>l :TmuxNavigateRight<CR>


" RSpec.vim mappings
"
nnoremap <Leader>z :call RunCurrentSpecFile()<CR>
nnoremap <Leader>y :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>
nnoremap <leader>r :!ruby %<cr>
"Ctags Toggle

nnoremap <Leader>] :TagbarToggle<CR>

" Now we can turn our filetype functionality back on
syntax on
filetype plugin indent on
let g:ale_fixers = {'javascript': ['eslint']}
