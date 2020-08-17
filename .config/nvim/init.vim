set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
set rnu

"vim-latex-live-preview
autocmd Filetype tex setl updatetime=1
let livepreview_previewer = 'open -a Preview'

"source ~/.config/nvim/plug-config/coc.vim


