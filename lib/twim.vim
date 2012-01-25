function! CountChars() 
  let lnum = 1
  let n = 0
  while lnum <= line("$")
    let n = n + len(getline(lnum))
    if lnum < line("$")
      let n = n + 1 " because wordwrap eliminates a space
    endif
    let lnum = lnum + 1
  endwhile
  return n
endfunction

function! TwimStatusLine()
  let filled = CountChars()
  let remaining = 140 - filled
  let line =  "%<Press ".g:mapleader.", to compress url under cursor.  [ Number of characters: " . filled . "  Remaining: " . remaining . " ]  %r%=%-14.(%l,%c%V%)\ %P"
  return line
endfunc

function! TinyUrl()
  let url = shellescape(expand("<cWORD>"))
  let cmd = "curl -s http://tinyurl.com/api-create.php?url=" . url
  echom "Converting URL to TinyURL..."
  let tinyurl = system(cmd)
  " this works fine except at beginning of line, but ok
  exec "normal caW " . tinyurl 
endfunc


set textwidth=72
set laststatus=2
setlocal statusline=%!TwimStatusLine()

noremap <silent> <buffer> <leader>, <Esc>:call TinyUrl()<CR>
