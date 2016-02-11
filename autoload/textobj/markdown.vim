let s:save_cpo = &cpo
set cpo&vim


function! textobj#markdown#a() abort
  let pos = getpos('.')

  let s = pos[1]
  let e = pos[1]
  let idx = pos[1]

  while idx > 0
    if getline(idx) =~ '^```'
      let s = idx
      break
    endif
    let idx -= 1
  endwhile

  let idx = pos[1]
  let last = line('$')
  while idx <= last
    if getline(idx) == '```'
      let e = idx
      break
    endif
    let idx += 1
  endwhile

  return ['V', [pos[0], s, pos[2], pos[3]], [pos[0], e, pos[2], pos[3]]]
endfunction

function! textobj#markdown#i() abort
  let res = textobj#markdown#a()
  let res[1][1] = res[1][1]+1
  let res[2][1] = res[2][1]-1
  return res
endfunction



let &cpo = s:save_cpo
unlet s:save_cpo
