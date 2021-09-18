function ToggleGuiFontSize(sizeA,sizeB)
  let s:cursize=matchlist(&gfn,":h\\(\\d*\\)")[1]
  let s:nextsize=(s:cursize==a:sizeA)?a:sizeB:a:sizeA
  let s:guifontcmd="set guifont=".substitute(&guifont,":h\\(\\d\\+\\)",":h".s:nextsize,"")
  if s:cursize>s:nextsize | exec s:guifontcmd | endif
  exec "set lines="   . (&lines   * s:cursize/s:nextsize +1)  
  exec "set columns=" . (&columns * s:cursize/s:nextsize)
  if s:cursize<s:nextsize | exec s:guifontcmd | endif
endfun
