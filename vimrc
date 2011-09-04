" Pathogen bundle manager
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"let g:AutoCloseProtectedRegions = []
"let g:AutoCloseProtectedRegions = ["Comment", "String", "Character"]


" Shortcuts
"  use w!! to 'sudo' save after you opened the file without 'sudo' first
cmap w!! w !sudo tee % >/dev/null
"
" clear search highlights easily
nmap <silent> ,/ :let @/=""<CR>


" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap


" speed up Vim command typing by using ; (no shift key) as : (=shift+;)
nnoremap ; :


set wildignore=*.swp,*.bak,*.pyc,*.class " ignore some file extensions when completing names by pressing Tab
set title                " change the terminal's titl

" silent mode
set visualbell           " don't beep
set noerrorbells         " don't beep



" Always show a customized status line
"set laststatus=2 statusline=%F%m%r%h%w%y%=[%l,%c][%P/%L]
set laststatus=2 statusline=%<%F\ %y%h%m%r%=%-14.(%l,%c%V%)\ %P/%L
set titlestring=%<%F

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set shiftround  " round indent to multiples of shiftwidth

set autoindent
set copyindent    " copy the previous indentation on autoindenting
"set smartindent

set fenc=utf8
set fencs=utf8,gb2312,big5

"set fileformat=unix
set fileformats=unix,dos,mac

"set shellcmdflag=-ic       " use an interactive login shell for $PATH

set showmatch     " set show matching parenthesis


filetype on
filetype plugin on
filetype indent on

syntax enable
"colo oceandeep
"set t_Co=256
colo vividchalk
"colo blackboard2
"colo tutticolori

set fo+=m   " break lines at multibyte chars (for asian chars)
set fo+=M   " do not insert a space before/after multibyte char when joining

" intuitive backspacing in insert mode
set backspace=indent,eol,start
 " allow backspacing over everything in insert mode

" Turn on hidden
"Don’t worry about the name. What this does is allow Vim to manage multiple buffers effectively.
"   * The current buffer can be put to the background without writing to disk;
"   * When a background buffer becomes current again, marks and undo-history are remembered.
set hidden

" Remap ` to '
" These are very similar keys. Typing 'a will jump to the line in the current file marked with ma. However, `a will jump to the line and column marked with ma.

" It is more useful in any case I can imagine, but it is located way off in the corner of the keyboard. The best way to handle this is just to swap them:
nnoremap ' `
nnoremap ` '


" Map leader to ,

" The leader character is your own personal modifier key, as g is Vim’s modifier key (when compared to vi). The default leader is \, but this is not located standardly on all keyboards and requires a pinky stretch in any case.
let mapleader = ","

" <SPACE> is also a good choice. Note: you can of course have several “personal modifier keys” simply by mapping a sequence, but the leader key is handled more formally. 




" Keep a longer history
" By default, Vim only remembers the last 20 commands and search patterns entered. It’s nice to boost this up:
set history=1000
set undolevels=1000      " use many levels of undo




" Set the terminal title
" A running gvim will always have a window title, but when vim is run within an xterm, by default it inherits the terminal’s current title.
"set title
" This gives e.g. | page.html (~) - VIM |. 


" use CSS stylesheet and XHTML for TOhtml
let html_use_css = 1
let use_xhtml = 1


" By default, pressing <TAB> in command mode will choose the first possible completion with no indication of how many others there might be. The following configuration lets you see what your other options are:
set wildmenu

" To have the completion behave similarly to a shell, i.e. complete only up to the point of ambiguity (while still showing you what your options are), also add the following:
set wildmode=full

" Use case-smart searching
" These two options, when set together, will make /-style searches case-sensitive only if there is a capital letter in the search expression. *-style searches continue to be consistently case-sensitive.
set ignorecase  " ignore case when searching
set smartcase   " ignore case if search pattern is all lowercase,
                " case-sensitive otherwise



" Maintain more context around the cursor
" When the cursor is moved outside the viewport of the current window, the buffer is scrolled by a single line. Setting the option below will start the scrolling three lines before the border, keeping more context around where you’re working.
set scrolloff=3
" Typing zz is also handy; it centers the window on the cursor without moving the cursor. (But watch out for ZZ!) 


" Scroll the viewport faster
" <C-e> and <C-y> scroll the viewport a single line. I like to speed this up:
"nnoremap <C-e> <C-e><C-e><C-e>
"nnoremap <C-y> <C-y><C-y><C-y>



" Enable limited line numbering
" It’s often useful to know where you are in a buffer, but full line numbering is distracting. Setting the option below is a good compromise:
set ruler
" Now in the bottom right corner of the status line there will be something like: 529, 35 68%, representing line 529, column 35, about 68% of the way to the end. 




" Stifle many interruptive prompts
" The “Press ENTER or type command to continue” prompt is jarring and usually unnecessary. You can shorten command-line text and other info tokens with, e.g.:
set shortmess=atI
" See :help shortmess for the breakdown of what this changes. You can also pare things down further if you like. 


set incsearch   " incremental search (search as you type)
set hlsearch    " highlight search result




" OS X default ctags version is too old
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'



" move by screen line
" normal node
map <Up>    gk
map <Down>  gj
"map <C-k>   <Up>
"map <C-j>   <Down>

imap <Up>   <C-o>gk
imap <Down> <C-o>gj
"imap <C-k>  <Up>
"imap <C-j>  <Down>

" swtich between diferent split windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" moving windows
"map <S-j> <C-w>J
"map <S-k> <C-w>K
"map <S-h> <C-w>H
"map <S-l> <C-w>L


" switch tabs
" normal mode
map <C-tab>   :tabnext<CR>
map <C-S-tab> :tabprev<CR>

" insert mode
imap <C-tab>   <Esc>:tabnext<CR>i
imap <C-S-tab> <Esc>:tabprev<CR>i


" show softwarpped continuing line
"set showbreak=…    " UTF8 causing problem in Linux
"set showbreak=...
"set showbreak=>\ "
set showbreak=-

" moving cursor by screenline
vmap <D-j> gj
vmap <D-k> gk
vmap <D-4> g$
"vmap <D-$> g$  " seems awkward to press Command+Shift+4, and it doesn't work
"anyway
vmap <D-6> g^
"vmap <D-^> g^
vmap <D-0> g0

nmap <D-j> gj
nmap <D-k> gk
nmap <D-4> g$
"nmap <D-$> g$
nmap <D-6> g^
"nmap <D-^> g^
nmap <D-0> g0



" Emacs-like keybinding for command line mode
cnoremap <C-A> <Home>
cnoremap <C-B> <Left>
cnoremap <C-D> <Del>
cnoremap <C-E> <End>
cnoremap <C-F> <Right>


" Tabularize plugin: align equal signs and friends
"if exists(":Tabularize") " for some reason this test fails at startup
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


" Instead of .gvimrc
if has("gui_running")
    " General GUI settings
    set guioptions-=T       " no toolbar
    set go-=r               " no right scrollbar
    set go-=l               " no left scrollbar
    set go-=b               " no bottom scrollbar
    set go-=L              " no scrollbar even if split
    set go-=R              " no scrollbar even if split

    " Hightlight cursor position
    set cursorline
    "set cursorcolumn

    " Make MacVim looks cool
    if has("gui_macvim")
        "set guifont=Monaco:h12
        set guifont=Menlo:h11
        "set guifont=Espresso\ Mono\ Regular:h13

        " transparent background
        "set bg=dark
        if &background == "dark"
            "hi normal guibg=black
            "set transparency=5
        endif

        " enter Fullscreen mode with maxium lines and columns
        set fuoptions+=maxvert,maxhorz 
        command Fullscreen set fullscreen
    endif
endif


