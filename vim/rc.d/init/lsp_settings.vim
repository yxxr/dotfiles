" vimrc
" デバッグ用設定
let g:lsp_log_verbose = 1  " デバッグ用ログを出力
let g:lsp_log_file = expand('~/.cache/tmp/vim-lsp.log')  " ログ出力のPATHを設定

function! s:configure_lsp() abort
setlocal omnifunc=lsp#complete   " オムニ補完を有効化
" LSP用にマッピング
nnoremap <buffer> <C-]> :<C-u>LspDefinition<CR>
nnoremap <buffer> gd :<C-u>LspDefinition<CR>
nnoremap <buffer> gD :<C-u>LspReferences<CR>
nnoremap <buffer> gs :<C-u>LspDocumentSymbol<CR>
nnoremap <buffer> gS :<C-u>LspWorkspaceSymbol<CR>
nnoremap <buffer> gQ :<C-u>LspDocumentFormat<CR>
vnoremap <buffer> gQ :LspDocumentRangeFormat<CR>
nnoremap <buffer> K :<C-u>LspHover<CR>
nnoremap <buffer> <F1> :<C-u>LspImplementation<CR>
nnoremap <buffer> <F2> :<C-u>LspRename<CR>
endfunction
let g:lsp_diagnostics_enabled = 0  " 警告やエラーの表示はALEに任せるのでOFFにする


"lsp settings
augroup MyLsp
autocmd!
" pip install python-language-server
if executable('pyls')
" Python用の設定を記載
" workspace_configで以下の設定を記載
" - pycodestyleの設定はALEと重複するので無効にする
" - jediの定義ジャンプで一部無効になっている設定を有効化
autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'pyls',
      \ 'cmd': { server_info -> ['pyls'] },
      \ 'whitelist': ['python'],
      \})
      autocmd FileType python call s:configure_lsp()
endif

if executable('typescript-language-server')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'javascript support using typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
        \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact'],
        \ })
endif
      autocmd FileType javascript call s:configure_lsp()
augroup END

