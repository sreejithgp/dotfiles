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
" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'w0rp/ale'
Plugin 'Buffergator'
"Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'dracula/vim'
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
Plugin 'tpope/vim-repeat'
Plugin 'kchmck/vim-coffee-script'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'junegunn/vim-peekaboo'
Plugin 'vimwiki/vimwiki'
Plugin 'michal-h21/vim-zettel'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'tpope/vim-dadbod'
Plugin 'kristijanhusak/vim-dadbod-ui'

let g:python_host_prog = '/usr/local/bin/python2'
"let g:airline_powerline_fonts = 1
"let g:airline_theme='dark'
let g:jsx_ext_required = 0
"set t_Co=256
"set background=dark
set nohlsearch
set laststatus=2
set relativenumber
set nu rnu
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start
set cursorline
set cursorcolumn
set textwidth=80
let &colorcolumn="80,".join(range(120,999),",")
set nosmarttab
colorscheme dracula
let g:dracula_colorterm = 0
set list listchars=eol:⏎,tab:»·.,trail:~,space:_
set exrc

imap <M-BS> <C-w>
noremap <C-h> :bp<CR>
noremap <C-l> :bn<CR>
noremap <C-p> :Files<CR>
"let g:solarized_termcolors=16
let mapleader = "\<Space>"
let g:autoswap_detect_tmux = 1
nnoremap <Leader>n :tabedit<CR>
nnoremap <Leader>. :tabn<CR>
nnoremap <Leader>, :tabp<CR>
nnoremap <Leader>w :tabclose<CR>

nnoremap <C-s> :update<CR>
inoremap <C-s> <Esc>:update<CR>
nnoremap <Leader>q :q!<CR>

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
filetype plugin indent on
syntax on
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_set_highlights = 0
let g:notes_directories = ['~/Documents/Notes']
let g:reach_db_stage = 'postgres://nfinitereach2:iYaX45M3JtDtCjDdutS81HspoC@localhost/reach2'
let g:zettel_fzf_command = "rg --column --line-number --ignore-case --no-heading --color=always "
hi VimwikiHeader1 cterm=bold ctermfg=220
hi VimwikiLink cterm=underline,italic ctermfg=cyan
hi VimwikiList ctermfg=5

" Spell checking wiki files
autocmd BufRead,BufNewFile *.wiki setlocal spell
" Title and date for new wiki files
autocmd BufNewFile *.wiki :r! echo \%title %:t:r'\n'\%date $(date "+\%Y-\%m-\%d \%H:\%M:\%S")
let g:vimwiki_listsyms = '✗○◐●✓'
let wiki = {}
"let wiki.path = '~/Library/Mobile\ Documents/com\~apple\~CloudDocs/vimwiki/'
let wiki.path = '~/vimwiki/'
let wiki.nested_syntaxes = {'ruby': 'ruby'}
let g:vimwiki_list = [wiki]
let g:zettel_format = "%title"
