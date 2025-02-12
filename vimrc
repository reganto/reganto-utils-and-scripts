set nocompatible                                                     "We want the latest Vim settings/options.


source ~/.vim/plugins.vim




syntax on
set number                                                            "Let's activate line numbers.
let mapleader = ','                                                   "The defualt leader is \,but a comma is much better.
set autowriteall                                                      "Automatically write the file when switching buffers.
set complete=.,w,b,u                                                  "Set our desired autocompletion matching.
set tabstop=8
set expandtab     "I want spaces instead of tabs
set softtabstop=4 "Tab key in Insert mode
set shiftwidth=4  "Width of indent in normal mode



"------------------Visuals-----------------"
colorscheme atom-dark
set t_CO=256                                                          "Use <t_CO> colors. This is useful for Terminal Vim.
set guifont=Fira_Code:h17                                             "Gui Vim font family and font size
set guioptions-=e						      "We don't want Gui tabs.
set linespace=15						      "Gui Vim line-height.


set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"Get ride of ugly split borders.
highlight VertSplit cterm=NONE 

"Now tabline is pretty.
highlight TabLine ctermfg=White ctermbg=Black
highlight TabLineFill ctermfg=black ctermbg=Black
"highlight TabLineSel ctermfg=White ctermbg=Magenta




"------------------Search-----------------"
set hlsearch





"------------------Split Management-----------------"
set splitbelow
set splitright


nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>




"------------------Mapping-----------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabedit ~/.vimrc<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>


"Now CtrlP plugin is so easer!

"Search in file
" nmap <C-R> :CtrlPMixed<cr> !!! dosen't work !!!

"Most Recent Used Files
nmap <C-E> :CtrlPMRUFiles<cr>

"Now ctag have a mapping key.
nmap <Leader>f :tag<space>

"Make it easy to edit the UltiSnips files
nmap <Leader>us :tabedit ~/.vim/UltiSnips/


"----------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.

augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

"Dosen't show docstring window to popup during completion.
autocmd FileType python setlocal completeopt-=preview




"------------------Vim-Flake8-----------------"
"Flake8 check should have a better trigger key
nmap <Leader>pfl :call flake8#Flake8()<CR>




"Flake8 check should have a better trigger key
"Notes and Tips
" - <Ctrl-W><Shift-|> : Full screen current Vim split
" - <Ctrl-W>=         : Restore Vim split sizes
