" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree'

Plug 'https://github.com/editorconfig/editorconfig-vim'

Plug 'https://github.com/mattn/emmet-vim'

Plug 'beyondwords/vim-twig'

Plug 'https://github.com/tpope/vim-surround'

" Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/vim-airline/vim-airline'

Plug 'https://github.com/airblade/vim-gitgutter'

Plug 'https://github.com/stephpy/vim-php-cs-fixer'

Plug 'https://github.com/sirver/UltiSnips'

Plug 'https://github.com/honza/vim-snippets'

Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

Plug 'https://github.com/tpope/vim-commentary'


Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'https://github.com/Yggdroot/LeaderF'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'neomake/neomake'

Plug 'https://github.com/jiangmiao/auto-pairs'

Plug 'ntpeters/vim-better-whitespace'

Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'

Plug 'https://github.com/vim-vdebug/vdebug'

Plug 'https://github.com/tpope/vim-repeat'

Plug 'https://github.com/tpope/vim-unimpaired'

Plug 'https://github.com/rust-lang/rust.vim'

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }


Plug 'justinmk/vim-sneak'


if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif


call plug#end()

let g:deoplete#enable_at_startup = 1

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

imap jj <Esc>

map ,l :NERDTreeToggle<CR>


nnoremap zz :update<CR>

inoremap zz <Esc>:update<CR>

inoremap ; <Esc>$a;<Esc>
nnoremap ; <Esc>$a;<Esc>

nnoremap ,d ddda{

nnoremap ,h :noh<cr>


set relativenumber
set nu

nnoremap , :

map ,o :only<CR>

nnoremap ,g :G<CR>:only<CR>

nnoremap R :e<CR>

nmap <leader>F :Leaderf function<CR>

nnoremap ,m :! bin/console doc:migrations:migrate

nnoremap ,e :! bin/console make:migration

nnoremap ,p :! pandoc % -t beamer -o %:r.pdf<cr>

nnoremap ,v : tabnew ~/.vim/vimrc<cr>

nnoremap ,s : so ~/.vim/vimrc<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nmap <Space> <<Space>


let g:molokai_original=1
colorscheme molokai
hi Normal guibg=NONE ctermbg=NONE
" NCM2 CONFIG
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=["UltiSnips", "personal-snippets"]


" If you use php-cs-fixer version 2.x
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
"let g:php_cs_fixer_cache = ".php_cs.cache" " options: --cache-file
"let g:php_cs_fixer_config_file = '.php_cs' " options: --config
" End of php-cs-fixer version 2 config params

let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

let g:php_cs_fixer_path = "~/php-cs-fixer-v2.phar" " define the path to the php-cs-fixer.phar
set laststatus=2


" PHPFACTOR CONFIG
"
" Include use statement
nmap <Leader>u :call phpactor#UseAdd()<CR>

" Invoke the context menu
nmap <Leader>mm :call phpactor#ContextMenu()<CR>

" Invoke the navigation menu
nmap <Leader>nn :call phpactor#Navigate()<CR>

" Goto definition of class or class member under the cursor
nmap <Leader>o :call phpactor#GotoDefinition()<CR>

" Show brief information about the symbol under the cursor
nmap <Leader>K :call phpactor#Hover()<CR>

" Transform the classes in the current file
nmap <Leader>tt :call phpactor#Transform()<CR>

" Generate a new class (replacing the current file)
nmap <Leader>cc :call phpactor#ClassNew()<CR>

" Extract expression (normal mode)
nmap <silent><Leader>ee :call phpactor#ExtractExpression(v:false)<CR>

" Extract expression from selection
vmap <silent><Leader>ee :<C-U>call phpactor#ExtractExpression(v:true)<CR>

" Extract method from selection
vmap <silent><Leader>em :<C-U>call phpactor#ExtractMethod()<CR>

let g:phpactorPhpBin = 'php'
let g:phpactorBranch = 'master'
let g:phpactorOmniAutoClassImport = v:true

autocmd FileType php setlocal omnifunc=phpactor#Complete

let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"


set scrolljump=15
set scrolloff=10
set cursorline
set cursorcolumn
" hi CursorLine   cterm=NONE ctermbg=234 ctermfg=NONE
set ruler

set lazyredraw

" save on jump
set autowrite

" auto reload file
set autoread

" SHARED CLIPBOARD
set clipboard+=unnamedplus

" UNDO CACHE
set undofile
set undodir=/tmp

"Latex CONF
map ,c zz:! pdflatex %

set mouse=


