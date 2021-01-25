syntax on
"set guifont=Menlo:h15
set guifont=MesloLGS\ NF:h12
set linespace=0
set number
set guioptions=
set shell=bash
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'
Plug 'majutsushi/tagbar'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'fabi1cazenave/termopen.vim'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/asmx86_64'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

set encoding=UTF-8


set termguicolors

set background=dark

colorscheme PaperColor


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
let g:startify_custom_header = [
	\'	_____	______	__      _	',
	\'	  |	|	| \     |	',
	\'	  |	|	|  \    |	',
	\'	  |	|  ___	|   \   |	',
	\'	  |	|    |  |    \  |	',
	\'	  |	|____|  |     \_|	',
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
autocmd BufWritePost *.ms !groff -ms % -T pdf > output/output.pdf
