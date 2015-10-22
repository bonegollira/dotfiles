set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,euc-jp,iso-2022-jp,cp932
set termencoding=utf-8
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set expandtab
set whichwrap=b,s,h,l,<,>,[,]
set shiftwidth=2
set title
set showmatch
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']['.&ft.']'}%=%l,%c%V%8P
set hlsearch
set t_Co=256
set complete+=k
set wrapscan
set wrap
set nocompatible
set nolinebreak
set wildmenu
set autoindent

nmap <C-l> 5l
nmap <C-k> 5k
nmap <C-j> 5j
nmap <C-h> 5h
nmap <C-x> 5x
nmap <C-d> 5dd
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" import aaa from 'bbb'; => const aaa = require('bbb');
"nmap <C-i> :%s/import \(.*\) from '\(.*\)';/const \1 = require('\2');/<CR>:nohlsearch<CR>
" const aaa = require('bbb'); => import aaa from 'bbb';
nmap <C-w> :%s/const \(.*\) = require('\(.*\)');/import \1 from '\2';/<CR>:nohlsearch<CR>
" export default aaa; => module.exports = aaa;
"nmap <C-b> :%s/export default \(.*\);/module.exports = \1;/<CR>:nohlsearch<CR>
" void 0; => undefined
nmap <C-i> :%s/void 0/undefined/<CR>:nohlsearch<CR>

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
vmap < :s/^\(.*\)$/<!-- \1 -->/<cr>:nohlsearch<cr>
vmap > :s/^\(.*\)$/<li><pre>\1<\/pre><\/li>/<cr>:nohlsearch<cr>
vmap :d :s/^\([/(]\*\\|<!--\) \(.*\) \(\*[/)]\\|-->\)$/\2/<cr>:nohlsearch<cr>

vnoremap <Tab> 0>>
vnoremap <S-Tab> 0<<

syntax on
"colorscheme zenburn
colorscheme Tomorrow-Night-Eighties

autocmd BufRead *.html :set filetype=php
autocmd BufRead *.stylus :set filetype=css
autocmd BufRead *.sass :set filetype=css
autocmd BufRead *.scss :set filetype=css
autocmd BufRead *.jsx :set filetype=javascript
autocmd BufRead *.es6 :set filetype=javascript
autocmd FileType php :set dictionary+=~/.vim/dict/php.dict
autocmd FileType perl :set dictionary+=~/.vim/dict/perl.dict
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" NeoBundle {{{
  " Note: Skip initialization for vim-tiny or vim-small.
  if !1 | finish | endif
  filetype off

  if has("vim_starting")
    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  " Required:
  call neobundle#begin(expand("~/.vim/bundle/"))

  " Let NeoBundle manage NeoBundle
  " Required:
  NeoBundleFetch "Shougo/neobundle.vim"
  NeoBundleLazy "jelera/vim-javascript-syntax", {"autoload":{"filetype":["javascript"]}}
  "NeoBundle "Shougo/neocomplete"
  NeoBundle "Shougo/neosnippet"
  NeoBundle "Shougo/neosnippet-snippets"
  NeoBundle "editorconfig/editorconfig-vim"
  NeoBundle "tpope/vim-pathogen"
  NeoBundle "scrooloose/syntastic"

  " My Bundles here:
  " Refer to |:NeoBundle-examples|.
  " Note: You don"t set neobundle setting in .gvimrc!
  call neobundle#end()

  " Required:
  filetype plugin on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
" }}}

" neocompletion {{{
  let g:neocomplete#enable_at_startup = 1
  let g:neocomplete#enable_ignore_case = 1
  let g:neocomplete#enable_smart_case = 1
  if !exists("g:neocomplete#keyword_patterns")
    let g:neocomplete#keyword_patterns = {}
  endif
  let g:neocomplete#keyword_patterns._ = "\h\w"
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
" }}}

" neosnippet {{{
  " Plugin key-mappings. " <C-k>でsnippetの展開
  let g:neosnippet#snippets_directory = "~/.vim/snippet"
  imap <C-k> <Plug>(neosnippet_expand_or_jump)
  smap <C-k> <Plug>(neosnippet_expand_or_jump)
  if has("conceal")
    set conceallevel=0 concealcursor=i
  endif
" }}}

" vim-pathogen {{{
  execute pathogen#infect()
" }}}

" syntastic {{{
  let g:syntastic_javascript_checkers = ['eslint']
" }}}
