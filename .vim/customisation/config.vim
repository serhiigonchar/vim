" Включить поддержку мыши
set mouse=a

" Убирает отображение текущего режима в нижней части экрана
set noshowmode

" Editorconfig
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Включить опцию номеров строк только в буферах с кодом
autocmd FileType c,cpp,java,javascript,python,vim set number

" Включить относительные номера в нормальном режиме и обычные номера в режиме вставки
set relativenumber
autocmd InsertEnter * set norelativenumber number
autocmd InsertLeave * set relativenumber

" Включить полосу 120 символов
set colorcolumn=120

" Убирает ~
set fillchars=eob:\ 

" Включение поддержки вкладок
set tabpagemax=50
set showtabline=2
set switchbuf=useopen

" Включить подсветку синтаксиса
syntax enable

" for vim 7
set t_Co=256

" for vim 8
if (has("termguicolors"))
    set termguicolors
endif

" Включить подсветку текущей строки
set cursorline
" Настройки
set enc=utf-8
" Полосы с табами
" set list
" set listchars=tab:>-
" Super клавиша
let mapleader = "\<Space>"

set splitbelow

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
