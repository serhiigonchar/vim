filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'indentLine.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-smooth-scroll'
call vundle#end()            " required


call plug#begin()
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'
Plug 'kaicataldo/material.vim', { 'branch': 'main' } " NEW
Plug 'ryanoasis/vim-webdevicons'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'mhinz/vim-signify' " Плагин для интеграции с Git
Plug 'tpope/vim-fugitive'
call plug#end()

source ~/.vim/customisation/nerdtree.vim
source ~/.vim/customisation/plugins.vim
source ~/.vim/customisation/lsp.vim
source ~/.vim/customisation/theme.vim
source ~/.vim/customisation/config.vim
set encoding=utf8

augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree setlocal conceallevel=3 | syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

hi LineNr guifg=#676d8e
hi CursorLineNr guifg=#f0ca68
