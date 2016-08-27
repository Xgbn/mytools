


filetype on

set ruler
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set nocompatible              " be iMproved, required
set backspace=2
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Chiel92/vim-autoformat'
Plugin 'altercation/vim-colors-solarized' 
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/Align'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
"Plugin 'tobyS/pdv'
"Plugin 'SirVer/ultisnips'
"Plugin 'tobyS/vmustache'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:formatterpath = ['/User/xiangbinhu/vim-pkgs/autopep8']

syntax enable

" set color scheme
if has("gui_running")
    colorscheme gruvbox
    set background=light
else
"    colorscheme solarized
    set background=dark
endif


" jedi-vim settings
"let g:jedi#goto_command = "<leader>d"
"let g:jedi#goto_assignments_command = "<leader>g"
"let g:jedi#goto_definitions_command = ""
"let g:jedi#documentation_command = "K"
"let g:jedi#usages_command = "<leader>n"
"let g:jedi#completions_command = "<C-N>"
"let g:jedi#rename_command = "<leader>r"

" PDV settings
"let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
"nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>

"""""""""""""""""""""""""""""
"key mappings

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l
map <C-H> <C-W>h



