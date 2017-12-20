" Tiny init.vim for deoplete

set expandtab
set tabstop=4
set shiftwidth=4

" deing
if &compatible
  set nocompatible
endif
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

let g:python3_host_prog = '/home/satoshi/anaconda3/bin/python'
let g:deoplete#enable_at_startup = 1

set runtimepath+=/home/satoshi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/satoshi/.cache/dein')
  call dein#begin('/home/satoshi/.cache/dein')

  " Let dein manage dein
  " Required:
  "call dein#add('/home/satoshi/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  call dein#add('zchee/deoplete-jedi')

  " Required:
  call dein#end()
  call dein#save_state()

  "# dein.toml, dein_layz.tomlファイルのディレクトリをセット
  let s:toml_dir = expand('~/.config/nvim')

  "# 起動時に読み込むプラグイン群
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  "# 遅延読み込みしたいプラグイン群
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
