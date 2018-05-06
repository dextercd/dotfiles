" Indentation
set shiftwidth=4
set tabstop=4
set copyindent     " Makes it so spaces don't get collapsed into tabs on new lines
set preserveindent " Makes it so spaces don't get collapsed into tabs when changing indent

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
