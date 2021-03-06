set shell=/bin/bash\ -li " https://github.com/gmarik/vundle/issues/175
"set shellcmdflag=-ic       " use an interactive login shell for $PATH

set nocompatible
filetype off        " required to use Vundle


" Map leader to ','.  The leader character is your own personal modifier key,
" as g is Vim’s modifier key (when compared to vi). The default leader is \,
" but this is not located standardly on all keyboards and requires a pinky
" stretch in any case.
let mapleader = ","
" <SPACE> is also a good choice. Note: you can of course have several “
" personal modifier keys” simply by mapping a sequence, but the leader key is
" handled more formally. 


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 

" GitHub repos
Bundle 'gmarik/vundle'
Bundle 'Townk/vim-autoclose'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-fugitive'
Bundle 'riobard/vim-cute-python'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-haml'
Bundle 'adimit/prolog.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'godlygeek/tabular'

Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
map <leader>t :NERDTree\|TagbarToggle<CR>
com TT NERDTree | TagbarToggle

Bundle 'riobard/scala.vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'scrooloose/syntastic'

Bundle 'jpalardy/vim-slime'
let g:slime_target = "tmux"

Bundle 'kien/ctrlp.vim'

Bundle 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'unicode'
let g:Powerline_symbols = 'fancy'   " requires patched font

Bundle 'mileszs/ack.vim'

Bundle 'altercation/vim-colors-solarized'
Bundle 'nanotech/jellybeans.vim'
Bundle 'tomasr/molokai'
Bundle 'sickill/vim-monokai'

" Vim-scripts repos
Bundle 'surround.vim'
Bundle 'matchit.zip'
Bundle 'nginx.vim'
Bundle 'cocoa.vim'
Bundle 'applescript.vim'
Bundle 'httplog'
Bundle 'DrawIt'


" Go-lang support
if !empty($GOROOT)
    set rtp+=$GOROOT/misc/vim
endif

filetype plugin indent on   " required by Vundle


"let g:AutoCloseProtectedRegions = []
"let g:AutoCloseProtectedRegions = ["Comment", "String", "Character"]


" Shortcuts
"  use w!! to 'sudo' save after you opened the file without 'sudo' first
cmap w!! w !sudo tee % >/dev/null

" clear search highlights easily
nmap <silent> ,/ :let @/=""<CR>

" Toggle `set list` to show invisible chars
nmap <leader>l :set list!<CR>

" Use these symbols for invisible chars
set listchars=tab:⇥\ ,trail:␣,eol:↩,nbsp:␣,extends:…,precedes:…

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

" Use OS X clipboard
set clipboard=unnamed

" speed up Vim command typing by using ; (no shift key) as : (=shift+;)
nnoremap ; :

set wildignore=*.swp,*.bak,*.pyc,*.class " ignore some file extensions when completing names by pressing Tab
set title                " change the terminal's titl

" Silent mode. No beeping. 
set visualbell noerrorbells

" Read 5 lines as modelines
set modeline modelines=5

" Hightlight cursor position
set cursorline  "cursorcolumn

set laststatus=2    " always show the status line
set statusline=%{fugitive#statusline()}\ %<%F\ %y%h%m%r%=%-14.(%l,%c%V%)\ [%P/%L]
set titlestring=%<%F

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround
set autoindent copyindent smartindent
set fenc=utf8 fencs=utf8,gb2312,big5
set fileformat=unix fileformats=unix,dos,mac


set showmatch     " set show matching parenthesis

syntax enable
set t_Co=256    " Use 256 colors to display correctly in console
silent! colo solarized

"" light colorschemes
"silent! colo tangolight
"silent! colo tutticolori
"silent! colo donbass

"" dark colorschemes
"silent! colo vividchalk
"silent! colo oceandeep
"silent! colo blackboard2
"silent! colo Monokai
"silent! colo molokai


set fo+=m   " break lines at multibyte chars (for asian chars)
set fo+=M   " do not insert a space before/after multibyte char when joining
set fo+=n   " format numbered list

" intuitive backspacing in insert mode
set backspace=indent,eol,start
 " allow backspacing over everything in insert mode

" Turn on hidden.  Don’t worry about the name. What this does is allow Vim to
" manage multiple buffers effectively.  
" * The current buffer can be put to the background without writing to disk; 
" * When a background buffer becomes current again, marks and undo-history 
" are remembered.
set hidden

" Remap ` to '.  These are very similar keys. Typing 'a will jump to the line
" in the current file marked with ma. However, `a will jump to the line and
" column marked with ma. It is more useful in any case I can imagine, but it
" is located way off in the corner of the keyboard. The best way to handle
" this is just to swap them:
nnoremap ' `
nnoremap ` '



" Keep a longer history By default, Vim only remembers the last 20 commands
" and search patterns entered. It’s nice to boost this up:
set history=1000
set undolevels=1000      " use many levels of undo


" Set the terminal title.  A running gvim will always have a window title, but
" when vim is run within an xterm, by default it inherits the terminal’s
" current title.  This gives e.g. | page.html (~) - VIM |. 
set title

" use CSS stylesheet and XHTML for TOhtml
let html_use_css = 1
let use_xhtml = 1


" By default, pressing <TAB> in command mode will choose the first possible
" completion with no indication of how many others there might be. The
" following configuration lets you see what your other options are:
set wildmenu

" To have the completion behave similarly to a shell, i.e. complete only up to
" the point of ambiguity (while still showing you what your options are), also
" add the following:
set wildmode=full

" Use case-smart searching. These two options, when set together, will make
" /-style searches case-sensitive only if there is a capital letter in the
" search expression. *-style searches continue to be consistently
" case-sensitive.
set ignorecase smartcase


" Maintain more context around the cursor.  When the cursor is moved outside
" the viewport of the current window, the buffer is scrolled by a single line.
" Setting the option below will start the scrolling three lines before the
" border, keeping more context around where you’re working.
set scrolloff=3
" Typing zz is also handy; it centers the window on the cursor without moving
" the cursor. (But watch out for ZZ!) 



" Enable limited line numbering
" It’s often useful to know where you are in a buffer, but full line 
" numbering is distracting. Setting the option below is a good compromise:
set ruler
" Now in the bottom right corner of the status line there will be something 
" like: 529, 35 68%, representing line 529, column 35, about 68% of the way to
" the end. 

if exists("+relativenumber")
    set relativenumber
endif



" Stifle many interruptive prompts: The “Press ENTER or type command to
" continue” prompt is jarring and usually unnecessary. You can shorten
" command-line text and other info tokens with, e.g.:
set shortmess=atI
" See :help shortmess for the breakdown of what this changes. You can also
" pare things down further if you like. 


set incsearch   " incremental search (search as you type)
set hlsearch    " highlight search result



" Trigger tag auto hightlight every second. Note this is done by writing swap
" file to trigger the CursorHold event. Low values will incur more disk I/O.
set updatetime=1000 


" Move by screen line
" Normal node
map <Up>    gk
map <Down>  gj
" Insert mode
imap <Up>   <C-o>gk
imap <Down> <C-o>gj
" Visual mode
vmap <D-j> gj
vmap <D-k> gk
vmap <D-0> g0   " head of line
vmap <D-6> g^   " beginning of line
vmap <D-4> g$   " end of line
" Normal mode
nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
nmap <D-6> g^
nmap <D-0> g0

" Switch between diferent split windows
" Ctrl- prefix is overly used by other plugins.
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-h> <C-w>h
"map <C-l> <C-w>l

" Option key as prefix. NOTE: iTerm 2 sends Option key as +Esc. Meta doesn't
" work properly. 
map <Esc>j <C-w>j
map <Esc>k <C-w>k
map <Esc>h <C-w>h
map <Esc>l <C-w>l


" Resize window
if bufwinnr(1)
    map - <C-W>+
    map _ <C-W>-
    map + <C-W><
    map = <C-W>>
endif

" moving windows
"map <S-j> <C-w>J
"map <S-k> <C-w>K
"map <S-h> <C-w>H
"map <S-l> <C-w>L


" Switch tabs in Normal mode
" Note: Terminal cannot recongnize <C-Tab>, just <Tab>
map <Tab>   :tabnext<CR>
map <S-Tab> :tabprev<CR>


" show softwarpped continuing line
set showbreak=…
"set showbreak=...
"set showbreak=>\ "
"set showbreak=-



" Emacs keybinding for command line mode editing
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>





" Tabularize plugin: align equal signs and friends
"if exists(":Tabularize") " TODO: for some reason this test fails at startup
    nmap <Leader>a= :Tabularize /=<CR>
    vmap <Leader>a= :Tabularize /=<CR>

    nmap <Leader>a: :Tabularize /:<CR>
    vmap <Leader>a: :Tabularize /:<CR>

    nmap <Leader>a/ :Tabularize /\/\/<CR>
    vmap <Leader>a/ :Tabularize /\/\/<CR>

    nmap <Leader>a# :Tabularize /#<CR>
    vmap <Leader>a# :Tabularize /#<CR>

    "Alternative style: spaces after colons
    "nmap <Leader>a: :Tabularize /:\zs<CR>
    "vmap <Leader>a: :Tabularize /:\zs<CR>
"endif



if exists("+autochdir")
    " change working directory to the one containing the file opened
    set autochdir
endif


" General GUI settings. I don't like keeping an additional .gvimrc file.
if has("gui_running")
    set guioptions-=T       " no toolbar
    set go-=r               " no right scrollbar
    set go-=l               " no left scrollbar
    set go-=b               " no bottom scrollbar
    set go-=L               " no scrollbar even if split
    set go-=R               " no scrollbar even if split


    " Make MacVim looks cool
    if has("gui_macvim")
        "set guifont=Monaco:h12
        set guifont=Menlo:h12

        " Enable meta- kind binding for GUI
        set macmeta

        map <M-j> <C-w>j
        map <M-k> <C-w>k
        map <M-h> <C-w>h
        map <M-l> <C-w>l

        " transparent background
        "set bg=dark
        if &background == "dark"
            "hi normal guibg=black
            "set transparency=5
        endif
    endif
endif
