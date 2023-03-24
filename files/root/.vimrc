"let mapleader = ";"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" TODO
Plugin 'whatyouhide/vim-gotham'
" TODO
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'Yggdroot/indentLine'
Plugin 'terrastruct/d2-vim'
Plugin 'earthly/earthly.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate'

" nerdtree
Plugin 'preservim/nerdtree'
" shiny dev icons, must be placed last.
Plugin 'ryanoasis/vim-devicons'
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

set nosmartindent
set cul
set nocindent
set encoding=UTF-8
set modeline
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
"set nofoldenable
set nu
set splitright
set colorcolumn=80
set directory=/tmp
set formatoptions+=w
"set tw=80
"set omnifunc=syntaxcomplete#Complete
set completeopt=longest
" see help cpt
set complete=.,t,i
set foldmethod=syntax
set foldnestmax=10
set foldlevel=9
let g:indentLine_enabled = 1

syntax on
" link to fzf binary
set rtp+=/usr/bin/fzf

nnoremap <leader>f :Files<Cr>
nnoremap <leader>g :GFiles<cr>
nnoremap <leader>o :Buffers<Cr>
nnoremap <leader>l :BLines<Cr>
nnoremap <leader>L :Lines<Cr>

augroup sql
  autocmd!
  "Required: sudo apt install pgformat
  autocmd FileType sql nmap <F3> :%!pg_format -B -<CR>
  set ts=4 sw=4 sts=4 expandtab
augroup END

" Differen Indentlines depending on depth.
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" NerdTree
silent! nmap <F2> :NERDTreeToggle<CR>


""" " YCM default binds <tab> we remove that here and listen to
""" " <C-n>. Below we give <tab> to supertab and then bind that
""" " again to <C-n>
""" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
""" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
""" let g:SuperTabDefaultCompletionType = '<C-n>'
""" 
""" " better key bindings for UltiSnipsExpandTrigger
""" let g:UltiSnipsExpandTrigger = "<tab>"
""" let g:UltiSnipsJumpForwardTrigger = "<tab>"
""" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
