" [FIX] CORE ISSUES {{{
" ==================================
" [SET] UP NON VIM NON VI COMPATIBLE
" ==================================
set nocompatible

" [FIX] PASTE PROBLEMS TO GVIM
" ============================
source $VIMRUNTIME/mswin.vim
behave mswin

" [DISABLE] AUTO COMMENTS
" =======================
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
setlocal comments-=://
setlocal comments+=f://
" }}}

" [CONFIG] LEADER KEY {{{
" =======================
" [SET] UP LEADER KEY
" ===================
let mapleader = ","
let localleader = ","
" }}}

" [CONFIG] WINDOW MOVEMENT & SIZING {{{
" =====================================
" [NMAP] WINDOW MOVEMENT
" ======================
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" [NMAP] WINDOW SIZING CONFIG
" ===========================
nmap <A-]> :vertical resize +5<cr>
nmap <A-[> :vertical resize -5<cr>
nmap <A-'> :resize +5<cr>
nmap <A-;> :resize -5<cr>
nmap <A-=> <C-w>=
"}}}

" [CONFIG] GVIM PREFERENCES {{{
" =============================
" [SET] CHARACTER ENCODING
" ========================
set encoding=utf-8

" [SET] HELP WINDOW HEIGHT
" ========================
set helpheight=25

" [SET] SCROLLOFF CONFIG
" ======================
set scrolloff=9

" [SET] COMMAND LINE COMPLETION FEATURE
" =====================================
set wildmenu

" [SET] MOUSE POINTER CONFIG WHILE IN VIM
" =======================================
set mousehide

" [SET] MACRO EXECUTION SCREEN UPDATE
" ===================================
set lazyredraw

" [SET] TIMEOUT FOR 'HLSEARCH' HIGHLIGHTING IN MSEC
" =================================================
set redrawtime=2000

" [SET] TIMOUT FOR PRENS IN MSEC
" ==============================
set matchtime=1500

" [SET] CASE SENSITIVE SEARCH
" ===========================
set noignorecase

" [SET] LINE NUMBERS
" ==================
set number

" [SET] SHOW STATUSLINE
" =====================
set laststatus=2

" [SET] SWITCH FILES WITHOUT SAVING
" =================================
set hidden

" [SET] SHOW HIDDEN CHARS
" =======================
set list

" [SET] CONVERT TABS TO SPACES
" ============================
set expandtab

" [SET] GENERAL TAB BEHAVIOR
" ==========================
set softtabstop=4

" [SET] TABSTOP (TAB WIDTH)
" =========================
set tabstop=4

" [SET] SHIFTWIDTH (SPACE WIDTH)
" ==============================
set shiftwidth=4

" [SET] DEFINE SPECIAL CHARS (LIST)
" =================================
set listchars=tab:#\ ,eol:¬

" [SET] INCREMENTAL SEARCH
" ========================
set incsearch

" [SET] HIDE GUI TOOLBAR
" ======================
set guioptions -=T

" [SET] STOP BLINKING CURSOR
" ==========================
set guicursor+=n-v-c:blinkon0

" [SET] HIDE SCROLLBAR
" ====================
set guioptions-=r

" [SET] DISABLE SCROLLBARS
" ========================
set guioptions=aem

" [SET] HIDE MENUBAR!
" ===================
set guioptions-=m

" [SET] DELETE UNACTIVE BUFFERS (NOT WORKING)
" ===========================================
set bufhidden=wipe

" [SET] AUTOINDENT
" ================
set autoindent

" [SET] FOLDMETHOD
" ================
set foldmethod=marker

" [SET] REMOVE OMNI COMPLETION PREVIEW
" ====================================
set completeopt-=preview

" [SET] VIM ICON
" ==============
set guioptions=i
" }}}

" [CONFIG] COLORSCHEME {{{
" ========================
" [DEFINE] COLORSCHEME
" ====================
colorscheme colorsbox-material

" [SET] FONT FAMILY && SIZE
" =========================
set guifont=Cousine\ for\ Powerline\ 14

" [SET] CURSORLINE SETTINGS
" =========================
set cursorline

" [SET] CURSOR BEHAVIOR IN INSERT MODE
" ====================================
set guicursor+=i:hor15-Cursor-blinkon0

" [SET] CURSOR BEHAVIOR IN VISUAL MODE
" ====================================
set guicursor+=v-ve:ver15-Cursor-blinkon0

" [SET] CURSOR BEHAVIOR IN COMMAND LINE INSERT MODE
" =================================================
set guicursor+=c-ci:hor25-Cursor-blinkon0

" [SET] CURSOR BEHAVIOR IN REPLACE MODE
" =====================================
set guicursor+=r:hor8-Cursor-blinkon0

" [HIGHLIGHT] CURSOR FG & BG
" ==========================
highlight Cursor guifg=#4BA8FF guibg=#0B0A00

" [HIGHLIGHT] LINE NUMBER BGCOLORS
" ================================
highlight LineNr guifg=#817A7A guibg=#282828

" [HIGHLIGHT] CURSOR LINE NUMBER COLORS
" =====================================
highlight CursorLineNr guifg=#FFFB4B guibg=#2C2C2C

" [HIGHLIGHT] MATCHPAREN COLORS
" =============================
highlight MatchParen guifg=#000000 guibg=#C646FF

" [HIGHLIGHT] SEARCH HIGHLIGHT COLORS
" ===================================
highlight Search guifg=#000000 guibg=#FFFB4B

" [HIGHLIGHT] NONTEXT CHARACTER COLOR
" ===================================
highlight NonText guifg=#4a4a59

" [HIGHLIGHT] SPLECIAL CHARACTER COLOR
" ====================================
highlight SpecialKey guifg=#4a4a59

" [HIGHLIGHT] VERTICAL LINE COLOR
" ===============================
highlight ColorColumn guibg=#004652
" }}}


" [CONFIG] MAPPINGS {{{
" =====================

" [NMAP CONFIG] {{{
" =================
" [NNOREMAP] MAP H TO GO TO THE BEGINING OF THE LINE
" ==================================================
nnoremap H 0

" [NNOREMAP] MAP K TO GO TO THE END OF THE LINE
" =============================================
nnoremap L $

" [NNOREMAP] OPEN CLOSE FOLD
" ==========================
nnoremap <leader>z za

" [NNOREMAP] CLOSE ALL FOLDS
" ==========================
nnoremap <leader>czc ggvGzC

" [NNOREMAP] OPEN ALL FOLDS
" ==========================
nnoremap <leader>czo ggvGzO

" [NNOREMAP] MAPS IN NORMAL MODE CTRL+U TO UPPERCASE LETTER
" =========================================================
nnoremap <c-u> vU<esc>

" [NNOREMAP] DELETE LINE
" ======================
nnoremap - dd

" [NMAP] ADD LINE ABOVE
" =====================
nmap <S-k> Ojk

" [NMAP] ADD LINE BELOW
" =====================
nmap <S-j> ojk

" [CONFIG] (NORMAL) {SOURCE} MAPPINGS
" ===================================
" [NNOREMAP] SOURCE GVIMRC
" ========================
nnoremap <leader>sv :source $MYGVIMRC<cr>

" [NNOREMAP] SOURCE VIMRC
" =======================
nnoremap <leader>sr :source $MYVIMRC<cr>

" [NNOREMAP] EDIT GVIMRC SHORTCUT (EDIT GVIMRC)
" =============================================
nnoremap <leader>eg :vsplit $MYGVIMRC<cr>

" [NNOREMAP] EDIT VIMRC SHORTCUT (EDIT VIMRC)
" ===========================================
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" [NNOREMAP] CLEAR TRAILING WHITESPACE (DO STRIP)
" ===============================================
nnoremap <leader>ds :%s/\s\+$//<cr>

" [NNOREMAP] PASTE CURRENT DATE & UNDERLINE (DO DATE)
" ===================================================
nnoremap <leader>dd :r! date "+\%Y-\%m-\%d"<CR>kddyy:let @a = strlen("<C-r>"<del>")<cr>o=<esc>x:execute "normal! @ap"<cr>o<esc>:w<CR>

" [NNOREMAP] UNDERLINE TEXT (DO UNDERLINE)
" ========================================
nnoremap <leader>du yy:let @a = strlen("<C-r>"<del>")<cr>o=<esc>x:execute "normal! @ap"<cr>

" [NNOREMAP] SAVE FILE (DO WRITE)
" ===============================
nnoremap <leader>w :w<cr>

" [NNOREMAP] DELETE BUFFER
" ========================
nnoremap <leader>qq :bd<cr>

" [NNOREMAP] CLOSE ALL AND SAVE
" =============================
nnoremap <leader>qa :wqa<cr>

" [NNOREMAP] DELETE ALL BUFFERS
" =============================
nnoremap <leader>bd :bufdo bd<cr>
" }}}

" [IMAP & VMAP CONFIG] {{{
" ========================
" [INOREMAP] REMAP ESC KEY AND SAVE
" ================================
inoremap jk <esc>

" [INOREMAP] INSERT REMAP ESC TO NO-OPERATION
" ===========================================
inoremap <esc> <nop>

" [VNOREMAP] CTRL+U TO UPPERCASE SELECTION
" ========================================
vnoremap <c-u> U

" [VNOREMAP] DELETE LINE ALIAS
" ============================
vnoremap - dd<esc>

" [VNOREMAP] YANK TO CLIPBOARD
" ============================
vnoremap <leader>y "+y

" [VNOREMAP] ON PRENS FROM THE BEGINING OF THE LINE
" =================================================
vnoremap in( <esc>f(vi(
vnoremap in) <esc>f(vi(

" [VNOREMAP] ON PRENS FROM THE END OF THE LINE
" ============================================
vnoremap iN( <esc>F(vi(
vnoremap iN) <esc>F(vi(

" [VNOREMAP] ON BRACKETS FROM THE BEGINING OF THE LINE
" ====================================================
vnoremap in[ <esc>f[vi[
vnoremap in] <esc>f[vi[

" [VNOREMAP] ON BRACKETS FROM THE END OF THE LINE
" ===============================================
vnoremap iN[ <esc>F[vi[
vnoremap iN] <esc>F[vi[

" [VNOREMAP] ON CURLY FROM THE BEGINING OF THE LINE
" =================================================
vnoremap in{ <esc>f{vi{
vnoremap in} <esc>f{vi{

" [VNOREMAP] ON CURLY FROM THE END OF THE LINE
" ============================================
vnoremap iN{ <esc>F{vi{
vnoremap iN} <esc>F{vi{

" [VNOREMAP] ON QUOTES FROM THE BEGINING OF THE LINE
" ==================================================
vnoremap in" <esc>f"vi"
vnoremap in' <esc>f'vi'
vnoremap in` <esc>f`vi`

" [VNOREMAP] ON QUOTES FROM THE END OF THE LINE
" =============================================
vnoremap iN" <esc>F"vi"
vnoremap iN' <esc>F'vi'
vnoremap iN` <esc>F`vi`

" [VNOREMAP] OPERATE ON TAGS FROM THE BEGINING OF THE LINE
" ========================================================
vnoremap int <esc>f>lvt<

" [VNOREMAP] OPERATE ON TAGS FROM THE END OF THE LINE
" ===================================================
vnoremap iNt <esc>F>lvt<
" }}}

" [OMAP CONFIG] {{{
" =================
" [ONOREMAP] ON PRENS FROM THE BEGINING OF THE LINE
" =================================================
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap in) :<c-u>normal! f(vi(<cr>

" [ONOREMAP] ON PRENS FROM THE END OF THE LINE
" ============================================
onoremap iN) :<c-u>normal! F(vi(<cr>
onoremap iN( :<c-u>normal! F(vi(<cr>

" [ONOREMAP] ON BRACKETS FROM THE BEGINING OF THE LINE
" ====================================================
onoremap in[ :<c-u>normal! f[vi[<cr>
onoremap in] :<c-u>normal! f[vi[<cr>

" [ONOREMAP] ON BRACKETS FROM THE END OF THE LINE
" ===============================================
onoremap iN[ :<c-u>normal! F[vi[<cr>
onoremap iN] :<c-u>normal! F[vi[<cr>

" [ONOREMAP] ON CURLY FROM THE BEGINING OF THE LINE
" =================================================
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap in} :<c-u>normal! f{vi{<cr>

" [ONOREMAP] ON CURLY FROM THE END OF THE LINE
" ============================================
onoremap iN{ :<c-u>normal! F{vi{<cr>
onoremap iN} :<c-u>normal! F{vi{<cr>

" [ONOREMAP] ON QUOTES FROM THE BEGINING OF THE LINE
" ==================================================
onoremap in" :<c-u>normal! f"vi"<cr>
onoremap in' :<c-u>normal! f'vi'<cr>
onoremap in` :<c-u>normal! f`vi`<cr>

" [ONOREMAP] ON QUOTES FROM THE END OF THE LINE
" =============================================
onoremap iN" :<c-u>normal! F"vi"<cr>
onoremap iN' :<c-u>normal! F'vi'<cr>
onoremap iN` :<c-u>normal! F`vi`<cr>

" [ONOREMAP] ON TAGS FROM THE BEGINING OF THE LINE
" ================================================
onoremap int :<c-u>normal! f>lvt<<cr>

" [ONOREMAP] ON TAGS FROM THE END OF THE LINE
" ===========================================
onoremap iNt :<c-u>normal! F>lvt<<cr>
" }}}

" }}}

" [CONFIG] AUTOCMDS {{{
" =====================

" [VIM] AUTOCOMMANDS {{{
" ======================
augroup filetype_vim

    " [CONFIG] SHORTCUT FOR COMMENTING IN VIM FILES
    " =============================================
    autocmd FileType vim iabbrev ,c "
    autocmd FileType vim imap <leader>c ,c<space>

    " [CONFIG] VIM FOLDMETHOD
    " =======================
    autocmd FileType vim setlocal foldmethod=marker
    autocmd FileType vim setlocal number

augroup END
" }}}

" [HTML] AUTOCOMMANDS {{{
" =======================
augroup filetype_html

    " [CONFIG] HTML INDENTATION SETTINGS
    " ==================================
    autocmd FileType html setlocal ts=4 sts=4 sw=4 expandtab

augroup END
" }}}

" [CSS] AUTOCOMMANDS {{{
" ======================
augroup filetype_css

    " [CONFIG] CSS INDENTATION SETTINGS
    " =================================
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab

    " [CONFIG] CSS FOLDMETHOD
    " =======================
    autocmd FileType css setlocal foldmethod=marker

augroup END
" }}}

" [STYLUS] AUTOCOMMANDS {{{
" =========================
augroup filetype_stylus

    " [CONFIG] STYLUS INDENTATION SETTINGS
    " ====================================
    autocmd FileType stylus setlocal ts=2 sts=2 sw=2 expandtab

augroup END
" }}}

" [JAVASCRIPT] AUTOCOMMANDS {{{
" =============================
augroup filetype_javascript

    " [CONFIG] JAVASCRIPT INDENTATION SETTINGS
    " ========================================
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

    " [CONFIG] JAVASCRIPT FOLDMETHOD
    " ==============================
    autocmd FileType javascript setlocal foldmethod=marker

    " [CONFIG] JAVASCRIPT COMMENT RULES
    " =================================
    autocmd FileType javascript inoremap <buffer> <leader>c //<space>

    " [CONFIG] JAVASCRIPT SEMI COLON INSERTION SHORTCUT
    " =================================================
    autocmd FileType javascript inoremap <buffer> <leader>; <esc>$a;<esc>:w<cr>

    " [CONFIG] JAVASCRIPT IF SNIPPET
    " ==============================
    autocmd FileType javascript inoremap <buffer> iff if() {<cr>}<esc>kwi<space><esc>wa

    " [CONFIG] JAVASCRIPT ELSE SNIPPET
    " ================================
    autocmd FileType javascript inoremap <buffer> elsee else {<cr>}<esc>O

augroup END
" }}}

" [PHP] AUTOCOMMANDS {{{
" ======================
augroup filetype_php

    " [CONFIG] PHP INDENTATION SETTINGS
    " =================================
    autocmd FileType php setlocal ts=4 sts=4 sw=4 expandtab

    " [CONFIG] PHP FOLDMETHOD
    " =======================
    autocmd FileType php setlocal foldmethod=marker

    " [CONFIG] SHORTCUT FOR COMMENTING IN PHP FILES
    " =============================================
    autocmd FileType php inoremap <buffer> <leader>c //<space>

    " [CONFIG] PHP IF SNIPPET
    " =======================
    autocmd FileType php inoremap <buffer> iff if() {<cr>}<esc>kwi<space><esc>wa

    " [CONFIG] PHP ELSE SNIPPET
    " =========================
    autocmd FileType php inoremap <buffer> elsee else {<cr>}<esc>O

    " [CONFIG] PHP EXIT SNIPPET
    " =========================
    autocmd FileType php inoremap <buffer> exx exit();<esc>:w<cr>

    " [CONFIG] PHP DEBUG SHORTCUT SNIPPET
    " ===================================
    autocmd FileType php inoremap <buffer> <leader>vd $cyber_debug->vd();<esc>hi

    " [CONFIG] JAVASCRIPT SEMI COLON INSERTION SHORTCUT
    " =================================================
    autocmd FileType php inoremap <buffer> <leader>; <esc>$a;<esc>:w<cr>

augroup END
" }}}

" [PYTHON] AUTOCOMMANDS {{{
" =========================
augroup filetype_python

    " [CONFIG] PYTHON INDENTATION SETTINGS
    " ====================================
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

    " [CONFIG] PYTHON FOLDMETHOD
    " ==========================
    autocmd FileType python setlocal foldmethod=marker

    " [CONFIG] PYTHON EXECUTION
    " ==========================
    autocmd FileType python nnoremap <buffer> <leader>p :!python %<cr>

    " [CONFIG] PYTHON COMMENT RULES
    " =============================
    autocmd FileType python inoremap <buffer> <leader>c #<space>

    " [CONFIG] PYTHON IF SNIPPET
    " =======================
    autocmd FileType python inoremap <buffer> iff if<space>:<esc>i

    " [CONFIG] PYTHON IF SNIPPET
    " =======================
    autocmd FileType python inoremap <buffer> elsee else:<esc>o

    " [INOREMAP] {CUSTOM} EXIT PYTHON
    " ===============================
    autocmd FileType python inoremap <buffer> exx exit(0)<esc>

augroup END
" }}}

" [TXT] AUTOCOMMANDS {{{
" ======================
augroup filetype_text

    " [CONFIG] TXT INDENTATION SETTINGS
    " =================================
    autocmd FileType text setlocal ts=2 sts=2 sw=2 expandtab

    " [CONFIG] TEXT FOLDMETHOD
    " ========================
    autocmd FileType text set foldmethod=marker

    " [CONFIG] TEXT NUMBER DISPLAY
    " ============================
    autocmd FileType text set number

augroup END
" }}}

" }}}

" [CONFIG] PLUGIN SETTINGS {{{
" ============================

" [SET] {DELIMITMATE} CONFIG
" ==========================
let delimitMate_matchpairs = "(:),[:],{:}"

" [SET] {NERDTREE} CONFIG
" =======================
let NERDTreeShowLineNumbers       = 1
let NERDTreeCascadeSingleChildDir = 0
let NERDTreeQuitOnOpen            = 1
let NERDTreeWinPos                = "left"
let NERDTreeAutoDeleteBuffer      = 1

" [NNOREMAP] {NERDTREE} TOGGLE NERDTREE
" =====================================
nnoremap <C-b> :NERDTreeToggle<CR>

" [MAP] {EASY MOTION} INIT
" ========================
map <Space>w <Plug>(easymotion-w)

" [MAP] {EASY MOTION} INIT EASY MOTION BACKWARDS
" ==============================================
map <Space>e <Plug>(easymotion-b)

" [MAP] {EASY MOTION} INIT EASY MOTION VISUAL MODE
" ================================================
map <leader>v V<Space>w

" [IMAP] {EMMET} COMPLETION SHORTCUT
" ==================================
imap <leader>h <c-y>,

" [IMAP] {EMMET} COMPLETION SHORTCUT
" ==================================
imap hh <c-y>,

" [IMAP] {EMMET} NEXT, PREVIOUS
" =============================
imap <leader>n <c-y>n
imap <leader>p <c-y>N

" [NMAP] {EASYALIGN} START INTERACTIVE FOR A MOTION/TEXT OBJECT (E.G. GAIP)
" =========================================================================
nmap ga <Plug>(EasyAlign)

" [VMAP] {EASY ALIGN} ALIGN ITEM FUNCTION
" =======================================
vmap <leader>a ga=

" [NNOREMAP] {FUGITIVE} GIT FUNCS
" ===============================
nnoremap <leader>gs :Git status<cr>
nnoremap <leader>gc :Git commit -a -m "
nnoremap <leader>ga :!git add -A<cr>
nnoremap <leader>gl :!git log<cr>
nnoremap <leader>gp :!git push<cr>

" [NNOREMAP] {DO ALIGN} TOGGLE
" ============================
vnoremap <leader>da :EasyAlign<cr>=
" }}}

" [CONFIG] XPERIMENTAL MAPPINGS {{{
" =================================
nnoremap <leader>' f"vi"
" }}}
