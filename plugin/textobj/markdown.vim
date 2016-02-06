if exists('g:loaded_textobj_markdown')
  finish
endif

let s:re_quote = '^```'
let s:re_quote_start = s:re_quote . '.+\n'
let s:re_quote_end   = '\n' . s:re_quote . '$'
let s:re_i_codeblock = '\v' . s:re_quote_start . '\zs\_.+\ze' . s:re_quote_end
let s:re_a_codeblock = '\v' . s:re_quote_start .    '\_.+'    . s:re_quote_end


call textobj#user#plugin('markdowncodeblock', {
\   'attr-i': {
\     'pattern': s:re_i_codeblock,
\     'select': 'ic',
\   },
\   'attr-a': {
\     'pattern': s:re_a_codeblock,
\     'select': 'ac',
\   },
\ })

let g:loaded_textobj_markdown = 1
