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

map <C-n> :NERDTreeToggle<CR>

inoremap jk <ESC>

let mapleader = "\<Space>"

set hlsearch

set laststatus=2

set number

set tabstop=2 shiftwidth=2 expandtab

"disable arrow keys

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Now we can turn our filetype functionality back on
filetype plugin indent on
