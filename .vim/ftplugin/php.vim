"-------------------------
" PHP настройки
"-------------------------

" Настройки для php-doc, по Ctrl-P генерить скелет до-коммента.
"source ~/.vim/php-doc.vim
"inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
"nnoremap <C-P> :call PhpDocSingle()<CR>
"vnoremap <C-P> :call PhpDocRange()<CR> 
"let g:pdv_cfg_Uses = 1

" Используем словарь PHP для автодополнения,
" который можно скачать отсюда http://lerdorf.com/funclist.txt
setlocal dictionary=~/.vim/dic/php

" Сделаем удобную навигацию по мануалу PHP
setlocal keywordprg=$HOME/.vim/external/phpmanual.sh
setlocal errorformat=%m\ in\ %f\ on\ line\ %l,%-GErrors\ parsing\ %f,%-G

" Проверка синтаксиса PHP
set makeprg=php\ -l\ %

" Формат вывода ошибок PHP
set errorformat=%m\ in\ %f\ on\ line\ %l

" Полезные 'быстрые шаблоны'
" Вывод отладочной информации
iabbrev dbg Daemon::log("");
iabbrev ddbg Daemon::log("".Debug::dump());

" Vim постовляется с достаточно мощным плугином подстветки синтаксиса PHP.
" Помимо прочего он умеет:

" Включаем фолдинг для блоков классов/функций
let php_folding = 2

" Не использовать короткие теги PHP для поиска PHP блоков
let php_noShortTags = 1

" Подстветка SQL внутри PHP строк
let php_sql_query=1

" Подстветка HTML внутри PHP строк
let php_htmlInStrings=1 

" Подстветка базовых функций PHP
let php_baselib = 1

set expandtab

setlocal tags=~/.vim/tags/badoo

source ~/.vim/php-doc.vim
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
