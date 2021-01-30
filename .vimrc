syntax on
"set guifont=Menlo:h15
set guifont=MesloLGS\ NF:h12
set linespace=0
set number
set nocompatible
set guioptions=
set encoding=utf-8
set termencoding=utf-8

set term=xterm-256color
set shell=bash
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'
Plug 'fabi1cazenave/termopen.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/asmx86_64'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

set encoding=UTF-8


"set termguicolors

set bg=dark

colorscheme badwolf
"colorscheme molokai

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
"let g:startify_custom_header = [
"	\ '	      _____                    _____                    _____           ',
"	\ '	     /\    \                  /\    \                  /\    \          ',
"	\ '	    /::\    \                /::\    \                /::\____\         ',
"	\ '	    \:::\    \              /::::\    \              /::::|   |         ',
"	\ '	     \:::\    \            /::::::\    \            /:::::|   |         ',
"	\ '	      \:::\    \          /:::/\:::\    \          /::::::|   |         ',
"	\ '	       \:::\    \        /:::/  \:::\    \        /:::/|::|   |         ',
"	\ '	       /::::\    \      /:::/    \:::\    \      /:::/ |::|   |         ',
"	\ '	      /::::::\    \    /:::/    / \:::\    \    /:::/  |::|   | _____   ',
"	\ '	     /:::/\:::\    \  /:::/    /   \:::\ ___\  /:::/   |::|   |/\    \  ',
"	\ '	    /:::/  \:::\____\/:::/____/  ___\:::|    |/:: /    |::|   /::\____\ ',
"	\ '	   /:::/    \::/    /\:::\    \ /\  /:::|____|\::/    /|::|  /:::/    / ',
"	\ '	  /:::/    / \/____/  \:::\    /::\ \::/    /  \/____/ |::| /:::/    /  ',
"	\ '	 /:::/    /            \:::\   \:::\ \/____/           |::|/:::/    /   ',
"	\ '	/:::/    /              \:::\   \:::\____\             |::::::/    /    ',
"	\ '	\::/    /                \:::\  /:::/    /             |:::::/    /     ',
"	\ '	 \/____/                  \:::\/:::/    /              |::::/    /      ',
"	\ '	                           \::::::/    /               /:::/    /       ',
"	\ '	                            \::::/    /               /:::/    /        ',
"	\ '	                             \::/____/                \::/    /         ',
"	\ '	                                                       \/____/          ',
"        \ ]                                                               

let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1


let g:startify_custom_header = [
	\'	_____	______	__      _	',
	\'	  |		|				| \     |	',
	\'	  |		|				|  \    |	',
	\'	  |		|  ___	|   \   |	',
	\'	  |		|    |  |    \  |	',
	\'	  |		|____|  |     \_|	',
	\]
map ; :Files<CR>

let g:suckless_mappings = {
\   '<Leader>[sdf]'       :   'SetTilingMode("[sdf]")'    ,
\   '<Leader>[hjkl]'      :    'SelectWindow("[hjkl]")'   ,
\   '<Leader>[HJKL]'      :      'MoveWindow("[hjkl]")'   ,
\'<Leader><C-[hjkl]>'     :    'ResizeWindow("[hjkl]")'   ,
\   '<Leader>[oO]'        :    'CreateWindow("[sv]")'     ,
\   '<Leader>w'           :     'CloseWindow()'           ,
\   '<Leader>[123456789]' :       'SelectTab([123456789])',
\  '<Leader>t[123456789]' : 'MoveWindowToTab([123456789])',
\  '<Leader>T[123456789]' : 'CopyWindowToTab([123456789])',
\}
let mapleader = "\<Space>"  " best Leader key ever </my2¢>
let g:suckless_tmap = 1
set splitbelow
set splitright
nmap <silent> <Leader>c    :call TermOpen()<CR>
nmap <silent> <Leader><Backspace> :call TermOpenRanger()<CR>
nmap <silent> <Leader>f		:NERDTreeToggle<CR>
nmap <silent> <Leader>S		:Startify<CR>
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:NERDTreeWinPos = "left"
let NERDTreeQuitOnOpen = 1
" autocmd vimenter * Startify 
" autocmd vimenter * NERDTree
au vimenter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Groff aliases
nnoremap <silent> <Leader>m	:!mupdf -I $(dirname %)/output/output.pdf </dev/null &>/dev/null &<CR><CR>
autocmd BufWritePost *.ms !groff -G -ms % -T pdf > output/output.pdf


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

set tabstop=2
