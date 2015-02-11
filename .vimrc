" Vundel Setup
set nocompatible               " be iMproved

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'ZenCoding.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-surround'
Bundle 'jQuery'
Bundle 'JavaScript-syntax'
Bundle 'vim-scripts/JavaScript-Indent'
Bundle 'vim-scripts/taglist.vim'
"Bundle 'vim-scripts/AutoComplPop'
Bundle 'majutsushi/tagbar'
Bundle 'msanders/snipmate.vim'
Bundle 'vim-scripts/sessionman.vim'
"Bundle 'minibufexpl.vim'
Bundle 'wincent/Command-T'
Bundle 'vim-scripts/ZoomWin'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'vim-scripts/vimwiki'
Bundle 'vim-scripts/calendar.vim--Matsumoto'
Bundle 'statianzo/vim-jade'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/VimIM'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'vim-scripts/a.vim'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vim-scripts/LustyJuggler'
"Bundle 'sjl/gundo.vim'
"Bundle 'ton/vim-bufsurf'
"Bundle 'vim-scripts/Txtfmt-The-Vim-Highlighter'
"Bundle 'vimez/vim-showmarks'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Raimondi/delimitMate'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'vim-scripts/SyntaxComplete'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tsaleh/vim-matchit'

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  General stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set number
set tabstop=2
set shiftwidth=2
set smartindent
set cindent
set autoindent
set splitbelow
set foldenable
set paste
set cursorline
set ignorecase smartcase
set nowrap
set hlsearch
"	keep the undo history when change buffers.
set hidden
set noswapfile
filetype on
filetype plugin on
"colorscheme desertEX
"let g:kolor_bold=0
"colorscheme kolor
"colorscheme monokai_refined
set background=dark
" Ignore node_module directory
set wildignore+=node_modules/**
colorscheme solarized
"let g:solarized_bold = 0;
set nopaste
vnoremap <A-k> :m '
if has("gui_running")
    set guioptions=egmrt
endif
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

autocmd InsertEnter * set nocul
autocmd InsertLeave * set cul

if has("mouse")
	set mouse=a
endif

"JS autocomplete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"Quick open and close Tlist
nmap ,t <esc>:TlistToggle<cr>
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1

"Switch tabs
nmap tn <esc>:tabn<cr>
nmap tp <esc>:tabp<cr>

""taglist
let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

" VimIM
let g:vimim_cloud = 'google'

if !has('gui_running')
    " Compatibility for Terminal
    let g:solarized_termtrans=1

    if (&t_Co >= 256 || $TERM == 'xterm-256color')
        " Do nothing, it handles itself.
    else
        " Make Solarized use 16 colors for Terminal support
        let g:solarized_termcolors=16
    endif
endif


" Folding
"set foldmethod = indent

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""
"Quick move in insert mode
inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

imap jj <esc>

nmap <CR> o<esc>

"Insert a new line
imap <c-CR> <esc>o
"Move to the end of line
imap <c-A> <esc>A

"Map the : to the <space>
nmap <space> :

"Map the NERDTreeTooglt to ,nt
nmap ,n <esc>:NERDTreeToggle<cr>

"No need to restart macvim after editing .vimrc
autocmd! bufwritepost .vimrc source %

nmap <c-w><c-o>  <esc>:ZoomWin<cr>

"Switch to previous buffer
nnoremap <C-6> <esc>:b#<cr>
"nnoremap <C-Tab> <esc>:bp<cr>
"nnoremap <C-S-Tab> <esc>:bn<cr>
nnoremap <C-^> <esc>:b#<cr>

"Resize window
nnoremap <silent> <Leader>- <esc>:res -10<cr>
"nnoremap <silent> <Leader><C-> <esc>:vertical resize -10<cr>
nnoremap <silent> <Leader>= <esc>:res +10<cr>
"nnoremap <silent> <Leader><C-=> <esc>:vertical resize +10<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  Move Lines
"""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <C-j> :m '>+1<CR>gv=gv
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
vnoremap <C-k> :m '<-2<CR>gv=gv

"function! s:swap_lines(n1, n2)
    "let line1 = getline(a:n1)
    "let line2 = getline(a:n2)
    "call setline(a:n1, line2)
    "call setline(a:n2, line1)
"endfunction

"function! s:swap_up()
    "let n = line('.')
    "if n == 1
        "return
    "endif

    "call s:swap_lines(n, n - 1)
    "exec n - 1
"endfunction

"function! s:swap_down()
    "let n = line('.')
    "if n == line('$')
        "return
    "endif

    "call s:swap_lines(n, n + 1)
    "exec n + 1
"endfunction

"noremap <silent> <c-s-up> :call <SID>swap_up()<CR>
"noremap <silent> <c-s-down> :call <SID>swap_down()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""
"  Vimwiki
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '/Users/yang/Documents/Yang/MAMP Sites/vimwiki', 'path_html': '/Users/yang/Documents/Yang/MAMP Sites/vimwiki/html'}]
let g:vimwiki_folding = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  AutoComplPop for snipmate
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:acp_behaviorSnipmateLength = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  indent guide
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_start_level = 2
let g:indent_guides_size = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap gt :GundoToggle<CR>
"lef g:gundo_right = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  Undo file
"""""""""""""""""""""""""""""""""""""""""""""""""""
set undodir=~/.vim_undo
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  Bufsurf
"""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <C-Tab> <esc>:BufSurfBack<CR>
"nnoremap <C-S-Tab> <esc>:BufSurfForward<CR>
"

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  MiniBufExpl
"""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:miniBufExplMapCTabSwitchBufs = 1 

"""""""""""""""""""""""""""""""""""""""""""""""""""
"  LustyJuggler
"""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LustyJugglerShowKeys = 'a'
let g:LustyJugglerShowKeys = 1
let g:LustyJugglerAltTabMode = 1
noremap <silent> <C-s> :LustyJuggler<CR>
