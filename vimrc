set nocompatible      					" Use Vim defaults.

runtime bundle/vim-pathogen/autoload/pathogen.vim 	" Load Pathogen.

let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'syntastic')

call pathogen#infect()

filetype indent on
filetype plugin on
syntax on

colorscheme evening 
set background=dark

" set expandtab         " Replace all tabs with with spaces.

" Use sane regex matching. Thanks Steve Losh!
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap / /\v
vnoremap / /\v

set incsearch		" Incremental search.
set hlsearch		" Highlight matching search terms.
set noignorecase	" Don't ignore case for searching.
set magic		" Slightly better regex.
set showmatch		" Show matching brackets.
set matchtime=4		" Time to flash the brack with showmatch.

set autoindent		" always set autoindenting on

set ttyfast		" Assume fast terminal connection.

set backspace=2		" Allow backspacing over everything in insert mode.

set number		" By default number all lines.
set numberwidth=3	" Use 3 spaces for line numbers.

set foldlevel=0		" Show contents of all folds.
set foldmethod=syntax	" Use syntax for folding.

set scrolloff=1		" Dont let the curser get too close to the edge.

set textwidth=79	" Wraps a line with a break after 79 chars.
set linebreak		" Display long lines as wrapped at word boundries.
set colorcolumn=80      " Display a colored column at column 80

set softtabstop=8	" Smaller tabs.
set tabstop=8		" Smaller tabs.
set shiftwidth=8	" Use 4 space indentation for each step of auto indent.

set showmode			" Show if in Insert, Visual, Replace etc.
set showcmd			" Show (partial) command in status line.
set ruler			" Use a ruler on the bottom.
set wildmenu			" Enable wildcard menu at bottom of vim.
set wildmode=longest,list:full	" Complete to longest on first tab, list 
				" and complete on second.

set nobackup		" Don't keep a backup file.

" Suffixes that get lower priority when doing tab completion for
" filenames. These are files I am not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.class

set laststatus=2	" Always show status.

set statusline=%<\ %F%m				" Filename and modified bit.
set statusline+=\ %{fugitive#statusline()}	" Oooh, git status line.
set statusline+=\ %#warningmsg#			" Start warnin colors	
" set statusline+=%{SyntasticStatuslineFlag()}	" Syntastic error message
set statusline+=%*				" End warning colors
set statusline+=%= 				" Start of right aligned.
set statusline+=[%c%V,%l]			" Column number and line number.
set statusline+=\ %P  				" Current line/total lines and
						" percentage.

" Configure the syntastic plugin.
" let g:syntastic_auto_loc_list=1		" Auto open error list when errors detected.
" let g:syntastic_loc_list_height=3	" Error list is only 5 lines long.
" let g:syntastic_quiet_warnings=1	" Don't bother me unles there are warnings.

"noremap <C-P> :set invpaste paste?<CR>

set pastetoggle=<C-P>

map <C-N> :set invnumber<CR>

au BufWinLeave * mkview
au BufWinEnter * silent loadview
