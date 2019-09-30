" VIM configs
set number

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Easily align between equals in equations
" Plug 'junegunn/vim-easy-align'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'

" For sudo edit and others
Plug 'tpope/vim-eunuch'

" For powerline bar
Plug 'itchyny/lightline.vim'

" For quick html editing
Plug 'mattn/emmet-vim'

" Linting
Plug 'dense-analysis/ale'

" show +/- in line numbers of a file under git
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

" Required for lightline.vim
set noshowmode
set laststatus=2

" Nerdtree settings
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

