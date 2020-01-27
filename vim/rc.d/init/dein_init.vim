filetype off
if &compatible
  set nocompatible               " Be iMproved
endif

" dein vim 設定
let DEIN_ROOT=expand('$HOME/.vim/plugin_manager/dein/')
let DEIN_PATH=expand('$HOME/.vim/plugin_manager/dein/.cache/repos/github.com/Shougo/dein.vim')
set runtimepath+=$HOME/.vim/plugin_manager/dein/.cache/repos/github.com/Shougo/dein.vim
if dein#load_state(g:DEIN_ROOT)
  call dein#begin(g:DEIN_ROOT)

  " Let dein manage dein
  call  dein#add('$HOME/.vim/plugin_manager/dein/.cache/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#load_toml(g:DEIN_ROOT."eager/editor.toml", { 'lazy': 0 })
  call dein#load_toml(g:DEIN_ROOT."lazy/python.toml", { 'lazy': 1 })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


filetype plugin indent on


