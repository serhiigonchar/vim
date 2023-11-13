syntax on
" Установка цвета фона
highlight Normal guibg=#123456 ctermbg=233

let g:airline_powerline_fonts = 1            " Если вы используете шрифты Powerline

" Цвет активной вкладки
let g:airline#extensions#tabline#tab#1#bg = 'DarkSlateGray'
let g:airline#extensions#tabline#tab#1#fg = 'white'


let g:illuminate_no_default_rules = 1




let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#buffer_sep = ' '


let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'


colorscheme material
let g:airline_theme = 'material'
" Fix italics in Vim
if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif
" hi Normal guibg=NONE ctermbg=NONE
" hi NonText guibg=NONE ctermbg=NONE
"
set t_Co=256
