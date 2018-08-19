function! TexBegin()
    let currline = line(".")
    call inputsave()
    let tagname = input("enter tag name: ")
    call inputrestore()
    call setline(currline, "\\begin{" . tagname . "}")
    normal o
    normal o
    call setline(currline + 2, "\\end{" . tagname . "}")
    normal l
    startinsert
endfunction

function! TexBeginIn(tagname)
    let currline = line(".")
    call setline(currline, "\\begin{" . a:tagname . "}")
    normal o
    normal o
    call setline(currline + 2, "\\end{" . a:tagname . "}")
    normal l
    startinsert
endfunction


inoremap  \\beg <Esc>:call TexBegin()<CR>
inoremap  \\item <Esc>:call TexBeginIn("itemize")<CR>
inoremap  \\enum <Esc>:call TexBeginIn("enumerate")<CR>
inoremap  \\def <Esc>:call TexBeginIn("defn")<CR>
inoremap  \\eq <Esc>:call TexBeginIn("equation*")<CR>

autocmd! BufNewFile,BufRead,VimEnter * 0r ~/.vim/templates/template.tex
