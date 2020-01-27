
augroup FiletypeGroup
  autocmd!
  au BufNewFile,BufRead *.jsx set filetype=javascript.jsx
augroup END

let b:ale_linter_aliases = ['javascript']
let b:ale_linters = ['eslint']
