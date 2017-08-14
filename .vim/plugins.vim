" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Colour schemes
Plug 'tomasr/molokai'

" PHP syntax
Plug 'StanAngeloff/php.vim'
let php_var_selector_is_identifier = 1    " Use same colour for dollar sign and variable name

" Initialize plugin system
call plug#end()

