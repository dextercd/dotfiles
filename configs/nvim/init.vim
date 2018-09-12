" Basic settings
filetype indent off " Disable custom indentation files, I want one generic indentation method

" Indentation
set tabstop=4
set shiftwidth=0
set autoindent
set copyindent     " Makes it so spaces don't get collapsed into tabs on new lines
set preserveindent " Makes it so spaces don't get collapsed into tabs when changing indent
set nosmarttab     " Spaces should, just like tabs, be deleted one by one

" Search/Replace
set hlsearch
set incsearch
set inccommand=nosplit

" Visual stuff
set termguicolors
colorscheme micol
set number " enable line numbers

set list
set listchars=tab:»\ ,space:·

" Mouse
set mouse=a

" Simple mappings
tnoremap <esc> <C-\><C-n>
tnoremap <C-\><esc> <esc>
nnoremap <silent> <esc> :nohlsearch <esc>
nnoremap Y y$

set fillchars+=vert:│
