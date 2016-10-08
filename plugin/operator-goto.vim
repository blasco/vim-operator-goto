function! Op_goto_start(motion_wiseness)
  let start = getpos("`[")
  echomsg getpos("`[")
  echomsg getpos("'[")
  echomsg getpos("']")
  echomsg getpos("`]")
  call cursor(start[0:2])
endfunction

function! Op_goto_end(motion_wiseness)
  let end = getpos("`]")
  call cursor(end[0:2])
endfunction

call operator#user#define('gotostart', 'Op_goto_start')
call operator#user#define('gotoend', 'Op_goto_end')

map <leader>[  <Plug>(operator-gotostart)
map <leader>]  <Plug>(operator-gotoend)
