set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

Plugin 'scrooloose/syntastic'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-ruby/vim-ruby'

Plugin 'kien/ctrlp.vim'

Plugin 'tpope/vim-surround'

Plugin 'vim-scripts/Solarized'

Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'

Plugin 'honza/vim-snippets'

Plugin 'jiangmiao/auto-pairs'

set background=dark

colorscheme solarized

map <C-n> :NERDTreeToggle<CR>
noremap <C-h> :bp<CR>
noremap <C-l> :bn<CR>

let mapleader = "\<Space>"
nnoremap <Leader>n :tabedit<CR>
nnoremap <Leader>. :tabn<CR>
nnoremap <Leader>, :tabp<CR>
nnoremap <Leader>w :tabclose<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>q :q!<CR>
inoremap jk <ESC>

" copying to buffer

vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P


set hlsearch

set laststatus=2

set relativenumber
set tabstop=2 shiftwidth=2 expandtab

"disable arrow keys

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Now we can turn our filetype functionality back on
filetype plugin indent on
