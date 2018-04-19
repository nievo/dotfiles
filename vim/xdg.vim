let cache_path = exists($XDG_CACHE_HOME) ? $XDG_CACHE_HOME . '/vim' : $HOME . '/.cache/vim'

" Swap cache
if !isdirectory(cache_path . '/swap')
  call mkdir(cache_path . '/swap', 'p')
endif
set directory=cache_path/swap//
execute 'set directory=' . escape(cache_path, '') . '/swap//'

" Backup cache
if !isdirectory(cache_path . '/backup')
  call mkdir(cache_path . '/backup', 'p')
endif
execute 'set backupdir=' . escape(cache_path, '') . '/backup//'

" Double slash does not actually work for backupdir, here's a fix
au BufWritePre * let &backupext='@'.substitute(substitute(substitute(expand('%:p:h'), '/', '%', 'g'), '\', '%', 'g'), ':', '', 'g')

" Undo cache - see :help persistent-undo
if !isdirectory(cache_path . '/undo')
  call mkdir(cache_path . '/undo', 'p')
endif
execute 'set undodir=' . escape(cache_path, '') . '/undo//'
set undofile

set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
let g:netrw_home=$XDG_CACHE_HOME . '/vim'

