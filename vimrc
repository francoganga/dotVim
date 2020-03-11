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

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'https://github.com/editorconfig/editorconfig-vim'

Plug 'https://github.com/mattn/emmet-vim'

Plug 'beyondwords/vim-twig'

Plug 'https://github.com/tpope/vim-surround'

" Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

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

" Plug 'prettier/vim-prettier', {
"   \ 'do': 'npm install',
"   \ 'branch': 'release/1.x',
"   \ 'for': [
"     \ 'javascript',
"     \ 'typescript',
"     \ 'css',
"     \ 'less',
"     \ 'scss',
"     \ 'json',
"     \ 'graphql',
"     \ 'markdown',
"     \ 'vue',
"     \ 'lua',
"     \ 'php',
"     \ 'python',
"     \ 'ruby',
"     \ 'html',
"     \ 'swift' ] }


Plug 'justinmk/vim-sneak'


if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif



" Plug 'dense-analysis/ale'

"REGEX SEARCH
Plug 'https://github.com/rking/ag.vim'
Plug 'https://github.com/gabesoft/vim-ags'
"-----------------------------------------



Plug 'unblevable/quick-scope'


"TYPESCRIPT NEW---------------------------------------
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-tslint', 'coc-prettier', 'coc-angular' ]
"-----------------------------------------------------
"


call plug#end()

"CTRLP + RipGrep
if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif
let g:ctrlp_match_window = 'top,order:btt,min:1,max:10,results:10'

"_________________________________

let g:deoplete#enable_at_startup = 1

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

imap jj <Esc>

map ,l :NERDTreeToggle<CR>
nnoremap ,k :NERDTreeFind<cr>


nnoremap zz :update<CR>

inoremap zz <Esc>:update<CR>

inoremap ; <Esc>$a;<Esc>
nnoremap ; <Esc>$a;<Esc>

nnoremap ,h :noh<cr>

set relativenumber
set nu

nnoremap , :

map ,o :only<CR>

nnoremap ,g :G<CR>:only<CR>

nnoremap R :e<CR>

nmap <leader>F :Leaderf function<CR>

nnoremap ,v : tabnew ~/.vim/vimrc<cr>

nnoremap ,s : so ~/.vim/vimrc<cr>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
  map <leader>k :wincmd k<cr>
endif

nnoremap ,a :Ags<Space><C-R>=expand('<cword>')<CR><CR>



inoremap jk <Esc>

"MOLOKAI THEME
let g:molokai_original=1
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

"
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

set list
set listchars+=space:.

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
nnoremap <A-t> :call TermToggle(12)<CR>
inoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>



"COC VIM CONFIG
"
"
"
"
" Remap for format selected region
xmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)
"
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Do default action for next item.
nnoremap <silent> ,m  :<C-u>CocNext<CR>

function! Occs()
  execute "split ".expand('%:r').".scss"
  execute "resize 15"
endfunction

function! Ocomp()
  execute "split ".expand('%:r').".ts"
endfunction

function! Ohtml()
  execute "split ".expand('%:r').".html"
endfunction

"Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

nnoremap ,ss :call Occs()<cr>
nnoremap ,cc :call Ocomp()<cr>
nnoremap ,hh :call Ohtml()<cr>


autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier

let mapleader = " "

nmap <leader>h :wincmd h<CR>
nmap <leader>j :wincmd j<CR>
nmap <leader>k :wincmd k<CR>
nmap <leader>l :wincmd l<CR>
