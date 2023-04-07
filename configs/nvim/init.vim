" Packages

call plug#begin()

Plug 'prabirshrestha/vim-lsp'

call plug#end()


" vim-lsp stuff
if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif


function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END




" Basic settings
filetype indent off " Disable custom indentation files, I want one generic indentation method
filetype plugin on

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

function! SynGroup()
    let l:s = synID(line('.'), col('.'), 1)
    echo synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfun
