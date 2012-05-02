syntax on

set backspace=2
set expandtab
set hlsearch
set incsearch
set number
set shiftwidth=2
set smartindent
set softtabstop=0
set tabstop=2

" vundle
set rtp+=~/.vim/bundle/neobundle.vim
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'vim-scripts/sudo.vim'

imap <C-k> <Plug>(neocomplcache_start_unite_complete)

" --------------------------------------------- project.vim
:let g:proj_flags = "imstc"
:nmap <silent> <Leader>P <Plug>ToggleProject
:nmap <silent> <Leader>p :Project<CR>

" --------------------------------------------- zen-coding
let g:user_zen_expandabbr_key = '<c-z>'

" --------------------------------------------- neocomplcache
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

let g:neocomplcache_snipetts_dir='~/.vim/snippets'
let g:neocomplcache_dictionary_filetype_lists = {
	\ 'default' : '',
	\ 'javascript' : $HOME . '/.vim/dict/javascript.dict',
	\ 'perl' : $HOME . '/.vim/dict/perl.dict'
\ }

" ShrotCuts.
imap <C-k> <Plug>(neocomplcache_snippets_expand)
smap <C-k> <Plug>(neocomplcache_snippets_expand)

" Enable omni completion.
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType perl setlocal omnifunc=perlcomplete#CompletePerl
