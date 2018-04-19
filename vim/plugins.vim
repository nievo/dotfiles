" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" Ensure Plug is installed
if empty(glob($VIM_CONFIG_PATH . '/autoload/plug.vim'))
  silent !curl -fLo $VIM_CONFIG_PATH/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin($VIM_CONFIG_PATH . '/plugged')

" Colour schemes
Plug 'arcticicestudio/nord-vim'

" Status / tab line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'nord'

" Distraction-free writing
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

function! s:goyo_enter()
  set nolist
  set noshowcmd
  set scrolloff=999
  Limelight
endfunction

function! s:goyo_leave()
  set list
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" PHP syntax
Plug 'StanAngeloff/php.vim'
let php_var_selector_is_identifier = 1    " Use same colour for dollar sign and variable name

" Initialize plugin system
call plug#end()

