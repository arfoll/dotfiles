syntax on
set pastetoggle=<F2>
nmap <F3> :set invnumber<CR>

" show command being typed in bottom right corner
set showcmd

" maps w!! to write as sudo
cmap w!! w !sudo tee > /dev/null %

colorscheme gruvbox
