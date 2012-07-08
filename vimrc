" enable syntax highlighting
"set dictionary=/usr/share/dict/word
syntax on
"javascript syntax
set tabstop=4
set shiftwidth=4
filetype indent on
au FileType html,python,vim,javascript setl shiftwidth=2
au FileType html,python,vim,javascript setl tabstop=2
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4

" automatically indent lines (default)
" set noautoindent

" select case-insenitiv search (not default)
" set ignorecase

" show cursor line and column in the status line
"set color
" show matching brackets
set showmatch

" display mode INSERT/REPLACE/...
set showmode
set number
"set foldenable
" changes special characters in search patterns (default)
" set magic

" Required to be able to use keypad keys and map missed escape sequences
set esckeys

" get easier to use and more user friendly vim defaults
" CAUTION: This option breaks some vi compatibility. 
"          Switch it off if you prefer real vi compatibility
set nocompatible
set backspace=indent,eol,start
" taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 1
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "name"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 25
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
""NERDTree 
let loaded_netrwPlugin = 0
let NERDTreeCaseSensitivieSort = 1
let NERDTreeHijackNetrw = 0
let NERDTreeWinPos = "right"
let NERDTreeIgnore = ['^\.svn$','\~$']
""win Manager setting
let g:winManagerWindowLayout = "BufExplorer"
let g:winManagerWidth = 30
nmap <silent> <F4> :TlistToggle<cr>
nmap <silent> <F2> :WMToggle<cr>
nmap <silent> <F3> :NERDTreeToggle<cr>

"PHP autocomplete Enable
if !exists('g:AutoComplPop_Behavior')
	let g:AutoComplPop_Behavior = {}
	let g:AutoComplPop_Behavior['php'] = []
	call add(g:AutoComplPop_Behavior['php'], {
				\'command' : "\\",
				\'pattern' : printf('\(->\|::\|\$\)\k\{%d,}$', 0),
				\'repeat' : 0
				\})
endif

if has("autocmd")
	autocmd BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\ exe "normal g`\"" |
				\ endif
	autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
	autocmd FileType python set omnifunc=pythoncomplete#Complete
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css set omnifunc=csscomplete#CompleteCSS
	autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
	autocmd FileType java set omnifunc=javacomplete#Complete
	autocmd FileType sql set omnifunc=sqlcomplete#Complete
	autocmd FileType c,cpp set omnifunc=ccomplete#Complete
endif
set tags=/var/www/webngchina/tags
" get easier to use and more user friendly vim defaults
" .vimrc ends here
let $LANG='zh_CN.UTF-8'
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,gb2312,big5,gb18030,default,latin1
