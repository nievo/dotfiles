" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" Ensure Plug is installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Colour schemes
Plug 'tomasr/molokai'

" Status / tab line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'molokai'

" PHP syntax
Plug 'StanAngeloff/php.vim'
let php_var_selector_is_identifier = 1    " Use same colour for dollar sign and variable name

" Initialize plugin system
call plug#end()

