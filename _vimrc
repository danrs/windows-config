"SAVE IN C:\Program Files (x86)\Vim\_vimrc

"APPEARANCE
"colorscheme
set background=dark
colorscheme elflord
syntax on       "syntax highlighting

set number          "show line numbers
set ruler           "show column and stuff

"highlight brackets
set matchtime=1
highlight MatchParen cterm=none ctermbg=none ctermfg=cyan

"INDENTATION
"auto-indenting
set autoindent
filetype indent on

"tab settings for most files
"tab length is 4, tabs are spaces, backspace kills 4-space-tabs
set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType * set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

"tab settings for Python
"tab length is 4, tabs are spaces, backspace kills 4-space-tabs
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4

"tab settings for Perl
"tab length is 3, tabs are spaces, backspace kills 3-space-tabs
autocmd FileType perl set tabstop=3|set shiftwidth=3|set expandtab|set softtabstop=3

"tab settings for json,html,yaml
"tab length is 2, tabs are spaces, backspace kills 2-space-tabs
autocmd FileType json,html,yaml set tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2

"tab settings for Makefiles
"tab length is 8, tabs are tabs, backspace kills 2-space-tabs
autocmd FileType make set tabstop=8|set shiftwidth=8|set noexpandtab|set softtabstop=0

"make normal mode cursor go to start (not end) of an initial tab character:
set list lcs=tab:\ \ 

"make backspacing work over indents, end of line, start of edited text:
set backspace=indent,eol,start

"COMMANDS
"tab autocompletion for commands
set wildmode=longest,list,full
set wildmenu

"display title with file name
set title

"f2 toggles paste mode
set pastetoggle=<F2>

"f3 toggles search highlighting
set hlsearch
noremap <F3> :set hlsearch!<CR>

"f4 toggles line numbers
noremap <F4> :set number!<CR>

"highlight trailing whitespace
match ErrorMsg '\s\+$'

"ctags: generate tags in project root with `ctags -R *` and vim will see them anywhere beneath that
set tags=./tags,tags;$HOME

"cscope: generate tags in project root with `cscope -Rb`
"Set $CSCOPE_DB to point to a cscope db, or else open vim in the db folder
"http://cscope.sourceforge.net/cscope_vim_tutorial.html
"WILL CAUSE 'Press ENTER' MESSAGE ON LAUNCH IF FILE NOT FOUND
source ~/.vim/cscope_maps.vim

"enable mouse in all modes
"NOTE: to use ordinary mouse behaviour, hold shift (Linux) or alt/option (OSX)
set mouse=a
set ttymouse=xterm2

"make the buffer work with clipboard
set clipboard=unnamed
