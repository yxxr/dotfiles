if g:dein#_cache_version !=# 150 || g:dein#_init_runtimepath !=# '/home/innocent/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim82,/usr/share/vim/vimfiles/after,/home/innocent/.vim/after,/home/innocent/.vim/plugin_manager/dein/.cache/repos/github.com/Shougo/dein.vim' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/innocent/dev/dotfiles/vim/vimrc', '/home/innocent/.vim/plugin_manager/dein/eager/editor.toml', '/home/innocent/.vim/plugin_manager/dein/lazy/python.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/innocent/.vim/plugin_manager/dein'
let g:dein#_runtime_path = '/home/innocent/.vim/plugin_manager/dein/.cache/vimrc/.dein'
let g:dein#_cache_path = '/home/innocent/.vim/plugin_manager/dein/.cache/vimrc'
let &runtimepath = '/home/innocent/.vim,/usr/share/vim/vimfiles,/home/innocent/.vim/plugin_manager/dein/.cache/repos/github.com/Shougo/dein.vim,/home/innocent/.vim/plugin_manager/dein/.cache/vimrc/.dein,/usr/share/vim/vim82,/home/innocent/.vim/plugin_manager/dein/.cache/vimrc/.dein/after,/usr/share/vim/vimfiles/after,/home/innocent/.vim/after'
colorscheme spring-night
  set timeout timeoutlen=1000 ttimeoutlen=50
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
