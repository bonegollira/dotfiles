" ------------------------------
" 文字コード

" vim使用時のデフォルトの文字コード
set encoding=utf-8
" 書き込み時の文字コード
set fileencoding=utf-8
" 読み込み時の文字コード
set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932
" ターミナル上での文字コード
set termencoding=utf-8

" ------------------------------
" 編集

" バックスペースでインデントや改行を削除
set backspace=indent,eol,start
" tab幅
set tabstop=2
" tabをスペースに変換
set expandtab
" カーソルを行頭、文末で止めない
set whichwrap=b,s,h,l,<,>,[,]
" vimが挿入するタブ幅 (cindentや>>など)
set shiftwidth=2
" 高度なインデント
"set smartindent
"ビジュアルモードでのコマンド置換
vmap # :s/^/# /<CR>:nohlsearch<CR>
vmap / :s/^/\/\/ /<CR>:nohlsearch<CR>
vmap > :s/^/> /<CR>:nohlsearch<CR>
vmap " :s/^/\" /<CR>:nohlsearch<CR>
vmap % :s/^/% /<CR>:nohlsearch<CR>
vmap ! :s/^/! /<CR>:nohlsearch<CR>
vmap ; :s/^/; /<CR>:nohlsearch<CR>
vmap - :s/^/-- /<CR>:nohlsearch<CR>
vmap :c :s/^\/\/ \\|^-- \\|^> \\|^[#"%!;] //<CR>:nohlsearch<CR>

vmap * :s/^\(.*\)$/\/\* \1 \*\//<CR>:nohlsearch<CR>
vmap ( :s/^\(.*\)$/\(\* \1 \*\)/<CR>:nohlsearch<CR>
vmap < :s/^\(.*\)$/<!-- \1 -->/<CR>:nohlsearch<CR>
vmap > :s/^\(.*\)$/<li><pre>\1<\/pre><\/li>/<CR>:nohlsearch<CR>
vmap :d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<CR>:nohlsearch<CR>

vnoremap <Tab> 0>>
vnoremap <S-Tab> 0<<

" ------------------------------
" 表示

" 行番号
"set number
" タイトルを表示
set title
" 対応するカッコ表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" ステータスラインに文字コードと改行文字を表示
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%V%8P
" 検索時のハイライト
set hlsearch
" 検索時のハイライトをEscキー2回で消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" シンタックス
syntax on
"set t_Con=256
"set t_Con=16
" カラースキーマの設定
colorscheme zenburn
"colorscheme pyte
" htmlのシンタックス表示をphpと同じにする
autocmd BufRead *.html :set filetype=php
" ファイルタイプごとに辞書ファイルを指定
autocmd FileType php :set dictionary+=~/.vim/dict/php.dict
autocmd FileType perl :set dictionary+=~/.vim/dict/perl.dict
" 辞書を使う設定
set complete+=k

" ------------------------------
" その他

" ファイルの最後まで来たら最初に戻って検索
set wrapscan
" 行の端で折り返す
set wrap
" vi互換にしない
set nocompatible
" ホワイト、スペースで折り返さない
set nolinebreak
" マウスを有効( n=ノーマル時に有効 )
"set mouse=n
" screenでマウスを有効
if &term == "screen"
set ttymouse=xterm2
endif
" コマンドライン補完強化
set wildmenu
" 前回終了時カーソル位置を復元
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" 5単位で移動
nmap <C-l> 5l
nmap <C-k> 5k
nmap <C-j> 5j
nmap <C-h> 5h
