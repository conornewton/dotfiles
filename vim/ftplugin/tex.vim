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

inoremap  \\beg <Esc>:call TexBegin()<CR>

autocmd! BufNewFile,BufRead,VimEnter * 0r ~/.vim/templates/template.tex
