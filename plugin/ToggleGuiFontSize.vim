function ToggleGuiFontSize(sizeA,...)
  let s:cursize=matchlist(&gfn,":h\\(\\d*\\)")[1]
  let s:nextsize=-1
  let s:sizeA = a:sizeA
 
  for s:sizeB in a:000
    
    if s:sizeA == s:cursize
      let s:nextsize = s:sizeB
      break
    endif
    
    let s:sizeA=s:sizeB

  endfor

  if s:nextsize < 0
    let s:nextsize = a:sizeA
  endif

  let s:guifontcmd="set guifont=".substitute(&guifont,":h\\(\\d\\+\\)",":h".s:nextsize,"")
  if s:cursize>s:nextsize | exec s:guifontcmd | endif
  exec "set lines="   . (&lines   * s:cursize/s:nextsize +1)  
  exec "set columns=" . (&columns * s:cursize/s:nextsize)
  if s:cursize<s:nextsize | exec s:guifontcmd | endif
endfun
