" TODO add documentation I guess??

function! CutWindow()
  let g:window_id_to_move = win_getid()
  let g:buffer_id_to_move = bufnr('%')
  hide
endfunction
command! Cut :call CutWindow()
nnoremap ,x :Cut<CR>

function! AttachWindowRight()
  if exists('g:window_id_to_move') && exists('g:buffer_id_to_move')
    vsplit
    wincmd l
    exe 'buf' g:buffer_id_to_move
  endif
endfunction
command! AttachWindowRight :call AttachWindowRight()
nnoremap ,l :AttachWindowRight<CR>

function! AttachWindowLeft()
  if exists('g:window_id_to_move') && exists('g:buffer_id_to_move')
    vsplit
    exe 'buf' g:buffer_id_to_move
  endif
endfunction
command! AttachWindowLeft :call AttachWindowLeft()
nnoremap ,h :AttachWindowLeft<CR>

function! AttachWindowBottom()
  if exists('g:window_id_to_move') && exists('g:buffer_id_to_move')
    split
    wincmd j
    exe 'buf' g:buffer_id_to_move
  endif
endfunction
command! AttachWindowBottom :call AttachWindowBottom()
nnoremap ,j :AttachWindowBottom<CR>

function! AttachWindowTop()
  if exists('g:window_id_to_move') && exists('g:buffer_id_to_move')
    split
    wincmd j
    exe 'buf' g:buffer_id_to_move
  endif
endfunction
command! AttachWindowTop :call AttachWindowTop()
nnoremap ,k :AttachWindowTop<CR>
