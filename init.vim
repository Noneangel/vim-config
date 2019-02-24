set nocompatible
filetype plugin on

syntax on
set nowrap
set encoding=utf8

" Show linenumbers
set number

" Themes (in ~/nvim/colors)
set termguicolors
set background=dark
let g:neosolarized_italic = 0
colorscheme NeoSolarized " should be after option


" Tagbar
" npm install --global git+https://github.com/Perlence/tstags.git
autocmd VimEnter * nested :call tagbar#autoopen(0)
nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_typescript = {
  \ 'ctagsbin' : 'tstags',
  \ 'ctagsargs' : '-f-',
  \ 'kinds': [
    \ 'e:enums:0:1',
    \ 'f:functions:0:1',
    \ 't:typealias:0:1',
    \ 'M:Module:0:1',
    \ 'm:member:0:1',
    \ 'i:interface:0:1',
    \ 'c:class:0:1',
    \ 'o:constructor:0:1',
    \ 'v:variable:0:1',
  \ ],
  \ 'kind2scope': {
    \ 'e' : 'enum',
    \ 'f' : 'function',
    \ 't' : 'typealias',
    \ 'M' : 'module',
    \ 'm' : 'member',
    \ 'i' : 'interface',
    \ 'c' : 'class',
    \ 'o' : 'constructor',
    \ 'v' : 'variable',
  \ },
  \ 'sort' : 0,
  \ 'sro' : '.',
\ }
