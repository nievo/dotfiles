" ------------------------------------------------------------------------------
"  Vim configuration
" ------------------------------------------------------------------------------

"" Color ------------------------------
set background=dark
syntax enable

" Force 256 color mode if available
if $TERM =~ "-256color"
  set t_Co=256
endif

"" File locations ---------------------
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set spellfile=~/.vim/spell/custom.en.utf-8.add

" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

"" Behaviors --------------------------
set autoread                    " Automatically reload changes if detected
set autowrite                   " Automatically write on make/shell commands
set backup                      " Turn on backups
set cf                          " Enable error files and error jumping
set clipboard+=unnamed          " Yanks go to clipboard instead
set complete=.,w,b,u,U          " Better complete options to speed it up
set formatoptions=crql          "
set gdefault                    " Make search/replace global by default
set hidden                      " Change buffer without saving
set history=768                 " Number of things to remember in history
set iskeyword+=\$,-             " Add extra characters that are valid parts of variables
set nostartofline               " Keep cursor column position
set scrolloff=3                 " Keep 3 lines below the last line when scrolling
set switchbuf=useopen           " Switch to an existing buffer if one exists
set timeoutlen=450              " Time to wait for a command (e.g. after leader)
set wildmenu                    " Turn on wildmenu

"" UI ---------------------------------
set cmdheight=2                 " Make the command area two lines high
set cursorline                  " Highlight cursorline
set laststatus=2                " Show the statusline
set more                        "
set noshowmode                  " Don't show the mode since Powerline shows it
set nowrap                      " Line wrapping off
set number                      " Show line numbers
set ruler                       " Show ruler
set title                       " Set window title to filename

if exists('+colorcolumn')
  set colorcolumn=80            " Show wrapping guide
endif

"" Text format ------------------------
set autoindent                  "
set backspace=indent,eol,start  " Delete everything with backspace
set cindent                     "
set expandtab                   "
set shiftwidth=2                "
set smarttab                    "
set tabstop=2                   "

"" Search -----------------------------
set ignorecase                  " Case insensitive search
set smartcase                   " Non-case sensitive search
set incsearch                   " Incremental search
set hlsearch                    " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
  \rake-pipeline-*

"" Visual -----------------------------
set list                        " Show invisible characters
set listchars=                  " Reset list characters
set listchars=tab:·\            " Show tabs
set listchars+=eol:¬            " Show end of line
set listchars+=trail:·          " Show trailing white space
set listchars+=extends:»        " Show line extends to the right
set listchars+=precedes:«       " Show line precedes to the left
set matchtime=2                 " How many tenths of a second to blink
set showmatch                   " Show matching brackets

"" Sounds -----------------------------
set noerrorbells
set novisualbell
set t_vb=

"" Mouse ------------------------------
set mouse=a                     " Enable mouse in all modes
set mousehide                   " Hide mouse after characters typed





