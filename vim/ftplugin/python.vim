" Python固有設定
" vim-lsp, ale
"

" ale settings
" Check Python files with flake8 and pylint.
" pip install flake8
if executable('flake8')
  let b:ale_linters = ['flake8', 'pylint']
else

endif
" " Fix Python files with autopep8 and yapf.
" pip install autopep8
if executable('autopep8')
  let b:ale_fixers = ['autopep8', 'yapf']
  " Set this variable to 1 to fix files when you save them.
  let g:ale_fix_on_save = 1
else
  echohl "autopep8 not installed"
endif

" " Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0
