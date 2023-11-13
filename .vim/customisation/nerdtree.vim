" NERD
" Открыть NERDTree при запуске Vim, если текущая директория проекта
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Интегрировать NERDTree с главным окном
autocmd VimEnter * wincmd p

" Переключение между главным окном и NERDTree
map <C-n> :NERDTreeToggle<CR>
map <C-t> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>


" let g:NERDTreeShowBookmarks=1

" Показывать статус Git в NERDTree
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
augroup NERDTreeSettings
    autocmd!
    autocmd FileType nerdtree setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
augroup END



" Включение иконок в NERDTree
let NERDTreeDirArrows=0
" let NERDTreeFileExtensionHighlightFullName=1
let NERDTreeFileExtensionHighlightType=1
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$', '\.swo$', '\.DS_Store']


