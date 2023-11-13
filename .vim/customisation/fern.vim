" Используйте FileType fernautocmd для выполнения сценариев инициализации для буфера папоротника
function! s:init_fern() abort
  " nmap <Plug>(fern-action-collapse-or-leave)
  " Use 'select' instead of 'edit' for default 'open' action
  nmap <buffer> <Plug>(fern-action-open) <Plug>(fern-action-open:select)

endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()

augroup END

augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()

augroup END
let g:fern#layout = 2
let g:fern#drawer_width = 30
" Включить поддержку значков в Fern
let g:fern#renderer = "nerdfont"

" Disable listing ignored files/directories
let g:fern_git_status#disable_ignored = 1

" Disable listing untracked files
let g:fern_git_status#disable_untracked = 1

" Disable listing status of submodules
let g:fern_git_status#disable_submodules = 1

" Disable listing status of directories
let g:fern_git_status#disable_directories = 1



augroup FernGroup
  autocmd!

  autocmd FileType fern setlocal norelativenumber | setlocal nonumber | call s:init_fern()
augroup END









function! SetFernColorsAndTabs()
  " Устанавливаем цвета для папок, если буфер Fern
  hi FernFolder guifg=#ffffff guibg=#ffffff ctermfg=222 ctermbg=222

  " Устанавливаем отступы для буфера Fern
  setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
endfunction



augroup FernSettings
  autocmd!
  autocmd FileType fern call SetFernColorsAndTabs()
augroup END

" Настройка клавиши пробела для открытия fzf
" nnoremap <space> :FZF<CR>echo mapleader
nnoremap <space> :Fern . -reveal=% -drawer<CR>echo mapleader



" Настройка Fern-git-status
augroup fern_git_status
  autocmd!
  autocmd FileType fern call s:setup_fern_git_status()
augroup END

function! s:setup_fern_git_status() abort
  let b:fern_git_status = get(b:, 'fern_git_status', {})
  let b:fern_git_status.refresh = 1

endfunction

