let &t_Co=256
set t_Co=256
set ai " включаем автоотступ
set expandtab " вместо табов ставим пробелы
set softtabstop=4 " один таб == 2 пробела
set shiftwidth=4
set tabstop=4

set dir=/tmp
set cpt=.,w,b,u,t,i
set encoding=utf8
set termencoding=utf-8
set fileencodings=utf8,cp1251

syntax on " включаем подсветку синатаксиса

set smartindent " включаем умные отступы

"""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase " игнорируем регистр при поиске
set smartcase
"""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark " терминал всегда с тёмным фоном

set nohlsearch " при поиске не помечать всё найденное
set incsearch " поиск при вводе

set nobackup " отключаем бэкап данных

" Автодополнение табом
imap <Tab> <C-N>

" После набора { и <Enter> рисовать вторую скобку.
imap {<CR> {<CR>}<Esc>O

set nu " нумерация строк
set showmatch " проверка скобок

set history=500

filetype plugin on
filetype indent on

set undolevels=500 " память отмен

set nowrap

set listchars+=precedes:<,extends:> " показывать, когда строка выходит за края экрана
set sidescroll=5
set sidescrolloff=5

if has("autocmd")
  "autocmd FileType php        set omnifunc=phpcomplete#CompletePHP
  autocmd BufRead *.sql       set filetype=mysql      
  autocmd FileType python     set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html       set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css        set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml        set omnifunc=xmlcomplete#CompleteTags
  "autocmd FileType c          set omnifunc=ccomplete#Complete
  "autocmd FileType cpp        set omnifunc=ccomplete#Complete
endif

let &errorformat="%f:%l: %t%*[^:]:%m," . &errorformat

" Теперь <leader> - это точка
let mapleader = "."

" Настройки TagList'а
let Tlist_File_Fold_Auto_Close=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1

" Настройка NERD_Commenter
let g:NERDUncomLineMap='<leader>C'

" Настройка BufExplorer
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitRight=1
let g:bufExplorerSplitVertical=1
let g:bufExplorerUseCurrentWindow=1

set foldmethod=indent " Фолдинг по отступам.
set nofoldenable

" При выходе сохранить все открытые буферы.
autocmd VimLeavePre * silent mksession ~/.vim/lastSession.vim

" более привычные Page Up/Down, когда курсор остаётся в той же строке,
" (а не переносится в верх/низ экрана, как при стандартном PgUp/PgDown)
" Поскольку по умолчанию прокрутка по C-Y/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>

nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться
" в режиме редактирования
set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы
" опуститься в режиме редактирования
set scrolloff=7

" Выключаем надоедливый 'звонок'
set novisualbell
set t_vb= 

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без
" необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Формат строки состояния
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ %{strftime(\"%a\ %b\ %d\ -\ %H:%M\")}
set laststatus=2

set autoread " автоматически обновляем буфер, если
             " файл изменился извне.

" Вертикальная граница текста - 120 символов.
set tw=120

" Не использовать .swp-файл
set noswapfile

" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов 
set complete+=t

" Отключаем Replace-mode
map R <Esc>
imap <Ins> <Esc>

" Убрать '----'  в фолдингах
set fillchars=vert:\ ,fold:\ 

" Анализ синтаксиса при печати.
set popt+=syntax:y

" Сдвигаем номера строк от границы.
set foldcolumn=0

"""""""""""""""""""""""""""""""""""""""""""
" Горячие клавиши.
"""""""""""""""""""""""""""""""""""""""""""

" CTRL-F для omni completion
imap <C-F> <C-X><C-O>

" Пробел в нормальном режиме перелистывает страницы
nmap <Space> <PageDown>

" Дописываем скобки
"imap [ []<LEFT>
"imap ( ()<LEFT>

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>i
imap <F2> <esc>:w<cr>i

" F3 - просмотр ошибок
nmap <F3> :copen<cr>
vmap <F3> <esc>:copen<cr>
imap <F3> <esc>:copen<cr>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>i
imap <F6> <esc>:bp<cr>i

" F7 - следующий буфер
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>i
imap <F7> <esc>:bn<cr>i

" F8 - список закладок
map <F8> :MarksBrowser<cr>
vmap <F8> <esc>:MarksBrowser<cr>
imap <F8> <esc>:MarksBrowser<cr>
 
" F9 - make команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i

" F10 - удалить буфер
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>

" F12 - Показать Project
map <F12> :Project<cr>
vmap <F12> <esc>:Project<cr>
imap <F12> <esc>:Project<cr>

" окно ниже
imap <C-DOWN> <Esc><C-W>ja
nmap <C-DOWN> <C-W>j

" окно выше
imap <C-UP> <Esc><C-W>ka
nmap <C-UP> <C-W>k
 
" окно левее
imap <C-LEFT> <Esc><C-W>ha
nmap <C-LEFT> <C-W>h
 
" окно правее
imap <C-RIGHT> <Esc><C-W>la
nmap <C-RIGHT> <C-W>l

set pastetoggle=<C-V>

" Настраиваем тему.
"color lucius

"let g:zenburn_high_Contrast=1
"colors zenburn

let g:molokai_original=1
colors molokai

" Подсветка строки, на которой находится курсор
"hi CursorLine guibg=#dbdbdb gui=none
"set cursorline!
"set ttyfast

" Маппинги для NERD_Tree
nmap <C-N>v :NERDTree<cr>
vmap <C-N>v <esc>:NERDTree<cr>i
imap <C-N>v <esc>:NERDTree<cr>i

nmap <C-N>x :NERDTreeClose<cr>
vmap <C-N>x <esc>:NERDTreeClose<cr>i
imap <C-N>x <esc>:NERDTreeClose<cr>i

setlocal spell spelllang=en,ru

map <LEFT> <LEFT>
map <RIGHT> <RIGHT>

function InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction

imap <tab> <c-r>=InsertTabWrapper()<cr>


source ~/.vim/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR> 
