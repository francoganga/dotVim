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

Plug 'airblade/vim-gitgutter'

Plug 'beyondwords/vim-twig'

Plug 'https://github.com/tpope/vim-surround'

Plug 'https://github.com/itchyny/lightline.vim'

Plug 'https://github.com/stephpy/vim-php-cs-fixer'

Plug 'https://github.com/sirver/UltiSnips'

Plug 'https://github.com/honza/vim-snippets'

Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

Plug 'https://github.com/tpope/vim-commentary'

Plug 'https://github.com/vim-syntastic/syntastic'

Plug 'https://github.com/wsdjeg/vim-todo'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

Plug 'https://github.com/Yggdroot/LeaderF'

call plug#end()


set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

imap jj <Esc>

map ,l :NERDTreeToggle<CR>

inoremap <Up> :echo "no"<CR>
inoremap <Down> :echo "no"<CR>

inoremap <Left> :echo "no"<CR>
inoremap <Right> :echo "no"<CR>
vnoremap <Up> :echo "no"<CR>
vnoremap <Down> :echo "no"<CR>
vnoremap <Right> :echo "no"<CR>
vnoremap <Left> :echo "no"<CR>
nnoremap <Up> :echo "no"<CR>
nnoremap <Down> :echo "no"<CR>
nnoremap <Right> :echo "no"<CR>
nnoremap <Left> :echo "no"<CR>

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


nnoremap zz :update<CR>

inoremap zz <Esc>:update<CR>

inoremap ; <Esc>$a;<Esc>
nnoremap ; <Esc>$a;<Esc>

nnoremap ,d g_lD


set relativenumber
set nu

nnoremap , :

map ,o :only<CR>

nnoremap ,g :G<CR>:only<CR>

nnoremap R :e<CR>

nmap <leader>F :Leaderf function<CR>



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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic configuration for PHP
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_php_phpcs_exec = '~/RUDA/PPS-RUDA/vendor/bin/phpcs'
let g:syntastic_php_phpcs_args = '--standard=psr2'
let g:syntastic_php_phpmd_exec = '~/phpmd/phpmd/src/bin/phpmd'
let g:syntastic_php_phpmd_post_args = 'cleancode,codesize,controversial,design,unusedcode'

command Todo noautocmd vimgrep /TODO\|FIXME/j src/** | cw
