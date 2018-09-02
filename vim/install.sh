current_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $current_path/vimrc ~/.vimrc

#if the git repository does not exist clone it
#otherwise update it
function cloneorupdate {
    ##these are called parameter extensions
    last=${1##*/} # removes everything before /
    bare=${last%%.git} # keep everthing before .git
    if [ ! -d "$bare" ] ; then
        git clone "$1" "$bare"
    else
        cd "$bare"
        git pull "$1"
    fi
}

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

cloneorupdate https://github.com/vim-syntastic/syntastic.git
cloneorupdate https://github.com/idris-hackers/idris-vim.git
cloneorupdate https://github.com/neovimhaskell/haskell-vim.git
cloneorupdate https://github.com/leafgarland/typescript-vim.git
cloneorupdate https://github.com/tpope/vim-pathogen.git
cloneorupdate https://github.com/xuhdev/vim-latex-live-preview.git
cloneorupdate https://github.com/conornewton/vim-markdown-pandoc-preview.git

mkdir -p ~/.vim/colors
cd ~/.vim/colors

echo "installing colorscheme"
curl https://raw.githubusercontent.com/KeitaNakamura/neodark.vim/master/colors/neodark.vim > neodark.vim

mkdir -p ~/.vim/ftplugin
ln -sf $current_path/ftplugin/tex.vim ~/.vim/ftplugin/tex.vim
ln -sf $current_path/ftplugin/html.vim ~/.vim/ftplugin/html.vim

