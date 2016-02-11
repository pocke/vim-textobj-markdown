let s:save_cpo = &cpo
set cpo&vim
if exists('g:loaded_textobj_markdown')
  finish
endif




call textobj#user#plugin('markdowncodeblock', {
\   '-': {
\     'select-i-function': 'textobj#markdown#i',
\     'select-i': 'ic',
\     'select-a-function': 'textobj#markdown#a',
\     'select-a': 'ac',
\   },
\ })



let g:loaded_textobj_markdown = 1
let &cpo = s:save_cpo
unlet s:save_cpo
