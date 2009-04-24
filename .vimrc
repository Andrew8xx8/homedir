set nobackup
set history=50
set ve=all

set background=dark


" Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set nocompatible

" Показывать положение курсора всё время.
set ruler

" Показывать незавершённые команды в статусбаре
set showcmd

" Включаем нумерацию строк
set number

" Фолдинг по отсупам
"set foldmethod=indent

" Поиск по набору текста (очень полезная функция)
set incsearch

" Отключаем подстветку найденных вариантов, и так всё видно.
set nohlsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
set scrolljump=1

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
set scrolloff=1

" Выключаем надоедливый "звонок"
set novisualbell
set t_vb=

" Кодировка текста по умолчанию
set encoding=utf8
set fileencoding=utf8
set termencoding=utf8



" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Скрыть панель в gui версии ибо она не нужна
set guioptions-=T

" Сделать строку команд высотой в одну строку
set ch=1

" Скрывать указатель мыши, когда печатаем
set mousehide

" Включить автоотступы
set autoindent

" Влючить подстветку синтаксиса
syntax on

" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Преобразование Таба в пробелы
set expandtab

" Размер табулации по умолчанию
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Формат строки состояния
set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

" Включаем "умные" отспупы ( например, автоотступ после {)
set smartindent

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages

" Комманды в режиме кириллицы
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >


" CTRL-F для omni completion
imap <C-F> <C-X><C-O>

" C-c and C-v - Copy/Paste в "глобальный клипборд"
vmap <C-C> "+y
imap <C-V> <esc>"+gP
vmap <C-V> "+gP
vmap <C-X> "+x

" Заставляем shift-insert работать как в Xterm
map <S-Insert> <MiddleMouse>

" C-y - удаление текущей строки
nmap <C-y> dd
imap <C-y> <esc>ddi

" Поиск и замена слова под курсором
"nmap ; :%s/\<<c-r>=expand("<cword>")<cr>\>/

" F2 - быстрое сохранение
nmap <F2> :w<cr>
vmap <F2> <esc>:w<cr>
imap <F2> <esc>:w<cr>

" F5 - просмотр списка буферов
nmap <F5> <Esc>:BufExplorer<cr>
vmap <F5> <esc>:BufExplorer<cr>
imap <F5> <esc><esc>:BufExplorer<cr>

" F6 - предыдущий буфер
map <F6> :bp<cr>
vmap <F6> <esc>:bp<cr>
imap <F6> <esc>:bp<cr>

" F7 - следующий буфер
map <F7> :bn<cr>
vmap <F7> <esc>:bn<cr>
imap <F7> <esc>:bn<cr>


map <F8> :TlistToggle<cr>
vmap <F8> <esc>:TlistToggle<cr>
imap <F8> <esc>:TlistToggle<cr>

" F9 - "make" команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>
imap <F9> <esc>:make<cr>

" F10 - удалить буфер
map <F10> :bd<cr>
vmap <F10> <esc>:bd<cr>
imap <F10> <esc>:bd<cr>

" F11 - обозреватель файлов
map <F11> :Ex<cr>
vmap <F11> <esc>:Ex<cr>
imap <F11> <esc>:Ex<cr>

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

" Выключаем ненавистный режим замены
imap <Ins> <Esc>i

" Меню выбора кодировки текста (koi8-r, cp1251, cp866, utf8)
set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.cp866 :e ++enc=cp866<CR>
menu Encoding.utf-8 :e ++enc=utf8 <CR>
map <F3>        :emenu Encoding.<TAB>
map <C-e>       :emenu Encoding.<TAB>
imap <C-e>      <Esc>:emenu Encoding.<TAB>


" Меню для выбора типа файла (DOS, UNIX, Mac)
menu FileFormat.UNIX :e ++ff=unix
menu FileFormat.DOS :e ++ff=dos
menu FileFormat.Mac :e ++ff=mac
map <F4>        :emenu FileFormat.<TAB>

map <F12> :emenu Perl.Idioms.
imap <F12> <ESC>:emenu Perl.Idioms.

" С-q - выход из Vim
map <C-Q> <Esc>:qa<cr>

imap <C-S> <Esc>:w<CR>

" Автозавершение слов по tab =)
function g:InsertTabWrapper()
let col = col('.') - 1
if !col || getline('.')[col - 1] !~ '\k'
return "\<tab>"
else
return "\<space>\<backspace>\<c-p>"
endif
endfunction
"imap <tab> <space><backspace><c-r>=g:InsertTabWrapper()<cr>

:au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

map <C-H> :Moccur<cr>

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

" Включаем filetype плугин. Настройки, специфичные для определынных файлов мы разнесём по разным местам
filetype plugin on
au BufRead,BufNewFile *.phps set filetype=php
au BufRead,BufNewFile *.thtml set filetype=php
au BufRead,BufNewFile *.pl set filetype=perl
au BufRead,BufNewFile *.pm set filetype=perl
au BufRead,BufNewFile *.rb set filetype=ruby
au BufRead,BufNewFile *.hrl set filetype=erlang
au BufNewFile,BufRead *.php let b:optionsset=0
au BufNewFile,BufRead *.php let b:PHP_autoformatcomment=0

let g:snippetsEmu_key = "<tab>"

" Настройки для Tlist (показвать только текущий файл в окне навигации по коду)
let g:Tlist_Show_One_File = 1

set completeopt-=preview
set completeopt+=longest
set mps-=[:]


set viminfo='10,\"100,:20,%,n~/.viminfo


hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "textmate16"

hi Normal ctermfg=Gray ctermbg=NONE
hi Cursor ctermfg=Black ctermbg=Yellow 
hi Keyword ctermfg=Brown
hi Define ctermfg=Brown 
hi Comment ctermfg=Darkmagenta
hi Type ctermfg=White 
hi Identifier ctermfg=White 
hi Constant ctermfg=White 
hi Function ctermfg=White 
hi Include ctermfg=Brown 
hi Statement ctermfg=Brown
hi String ctermfg=Darkgreen 
hi Search ctermbg=White 

hi rubySharpBang ctermfg=Darkmagenta
hi rubySymbol ctermfg=Darkcyan 
hi rubyStringDelimiter ctermfg=Darkgreen
hi rubyInterpolation ctermfg=White
hi rubyPseudoVariable ctermfg=White
hi RubyInteger ctermfg=Darkred
hi RubyFloat ctermfg=Darkred
hi RubyDocumentation ctermfg=White ctermbg=Darkgrey
