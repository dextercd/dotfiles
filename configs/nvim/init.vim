" Basic settings
filetype indent off " Disable custom indentation files, I want one generic indentation method
filetype plugin off

set hidden

" Indentation
set tabstop=4
set shiftwidth=0
set autoindent
set copyindent     " Makes it so spaces don't get collapsed into tabs on new lines
set preserveindent " Makes it so spaces don't get collapsed into tabs when changing indent
set expandtab      " Use spaces instead of tabs
set smarttab
set nolisp

" Search/Replace
set inccommand=nosplit

" Visual stuff
set termguicolors
if $SCREEN=='ereader'
	colorscheme ereader
else
	colorscheme micol
endif
set number " enable line numbers
let g:sql_type_default = 'psql'

" wrapping + indicator
"set textwidth=80
" I don't use +1 because in some situation I might like to disable textwidth but
" keep the colorcolumn
set colorcolumn=81

set list
set listchars=tab:»\ ,space:·

" Restore cursor location when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Mouse
set mouse=a

" Simple mappings
tnoremap <esc> <C-\><C-n>
tnoremap <C-\><esc> <esc>
nnoremap <silent> <esc> :nohlsearch <esc>
nnoremap Y y$

set fillchars+=vert:│

function! StripTrailingWs() abort
	let view = winsaveview()

	%s/\s\+$//e

	call winrestview(view)
endfunction

nnoremap <silent> <Space>w :call StripTrailingWs()<CR>
command! -nargs=1 Mw call netrw#BrowseX("https://www.merriam-webster.com/dictionary/" . <q-args>, 0)

" Git specific configuration
au FileType gitcommit setlocal textwidth=72
au FileType gitcommit setlocal colorcolumn=+1
