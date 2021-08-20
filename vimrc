"=============================================================================
"~.vimrc~
"=============================================================================

" Editor settings
"=============================================================================
syntax on
filetype plugin on
set nocompatible
filetype on
filetype indent on
highlight SpecialKey ctermfg=8
highlight NonText ctermfg=8


runtime macros/matchit.vim

" Let command settings
"=============================================================================
" Want to set this before any others
let mapleader ="\<Space>"

" Make CtrlP use ag for listing the files. Way faster and no useless files.
" Without --hidden, it never finds .travis.yml since it starts with a dot
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"

" NERDTree arrows
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" vim-ruby-syntax
" Ruby: Operator highlighting
let ruby_operators = 1
let ruby_pseudo_operators = 1

" Ruby: Whitespace errors
let ruby_space_errors = 1

" Ruby: Spellchecking strings
let ruby_spellcheck_strings = 1

let g:lightline = { 'colorscheme': 'powerline', }

"  Normal mode mappings
"=============================================================================
" Easy access to the start of the line
" nmap 0 ^

" Shortcut to insert numbers from 1 to ... nth
nmap <leader>in :%s/^/\=printf('%-3d', line('.'))<cr>

" Split easier
nmap <leader>rc :vs $MYVIMRC<cr>
nmap <leader>vr :sp<cr>
nmap <leader>hr :vs<cr>

" Source easier.. don't forget to write first
nmap <leader>so :source $MYVIMRC<cr>

" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>

" Copy the entire buffer into the system register
nmap <leader>co ggVG*y

" Show invisible charaters
nmap <leader>c :set list!<CR>

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

" Text-mate indent style
" nmap <S-[> <<
" nmap <S-]> >>

" Visual mappings
" ============================================================================ 
" Text-mate select indent style
vmap <C-[> <gv
vmap <C-]> >gv 

" Toggle spell checking on and off with 'spc s'
nmap <silent> <leader>or :set spell!<CR>

" Insert mappings
"=============================================================================
" Caps Lock to Esc
imap jk <esc>

" Set settings
"=============================================================================
set number                      " Line numbers
set relativenumber              " Relative numbers
set nocompatible                " Don't maintain compatibilty with Vi.
set hidden                      " Allow buffer change w/o saving
set nohlsearch                  " No highlight all while I'm searching
set incsearch                   " Highlight while I'm typing
set smartindent
set lazyredraw                  " Don't update while executing macros
set backspace=indent,eol,start  " Sane backspace behavior
set history=1000                " Remember last 1000 commands
set scrolloff=4                 " Keep at least 4 lines below cursor
" set signcolumn=yes              " Adds an side column on the left
set colorcolumn=79              " Line lenght limit warning bar
set noswapfile                  " Disable swapfile
set fillchars+=vert:▏
set t_ZH=[3m
set t_ZR=[23m
set laststatus=2
set ignorecase
set infercase
set dictionary=/usr/share/dict/cracklib-small
set complete=.,b,d,i,k,t,u,w
set showfulltag
" set backup
" set patchmode=.bak
set listchars=tab:▸\ ,eol:¬
set list
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" Auto commands
"=============================================================================
" Automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Automatic date insert at write... this calls the DateInsert() function
" autocmd BufWritePre *.txt call DateInsert()

"Only do this part when compiled with support for autocommands
" autocmd BufWritePre *.txt, *.rb, *.py, *.js :call <SID>StripTrailingWhiteSpaces()

" Easy way to closehelp files
autocmd Filetype help nmap <buffer> q :q<CR>

" Disable line numbers for text files
augroup Text
	autocmd!
	autocmd Filetype text setlocal cc=
	autocmd Filetype text setlocal nonumber norelativenumber
	autocmd BufWinEnter *.txt set showbreak=...
	autocmd BufWinEnter text set textwidth=79
	autocmd BufWinEnter text set nocolorcolumn
augroup END

" nnoremap
"=============================================================================
" zoom a vim pane, <C-w>= to re-balance
nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>sl :VtrSendLinesToRunner<cr>
noremap <leader>fr :VtrFocusRunner<cr>
nnoremap <leader>sc :VtrSendCommandToRunner<cr>
nnoremap <leader>sf :VtrSendFile<cr>

nnoremap <F12> :NERDTreeToggle<CR>

" Undotree toggle
nnoremap <F5> :UndotreeToggle<CR>

" Spelling fix.. function in line 215
nnoremap <leader>sp :call FixLastSpellingError()<cr>

" Creating a mapping to perform calculations
nnoremap Q 0yt=A <C-r>=<C-r>"<CR><Esc>

" Hit the <F4> key to remove trailing whitespaces... function in line 225
nnoremap <silent> <F4> :call <SID>StripTrailingWhiteSpaces()<CR>

" inoremap settings
" ============================================================================ 
" Map tab for ruby-vim omni-completion
inoremap <tab> <C-x><C-o>

" Tabular function
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a

" Command aliases for typoed commands (accidentally holding shift too long)
"=============================================================================
command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e
command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()

" Wrap lines and breaks lines
command! -nargs=* Wrap set wrap linebreak nolist

" Vim-Plug stuff
"=============================================================================
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-conflicted'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'thoughtbot/vim-rspec'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'vim-ruby/vim-ruby'
Plug 'mbbill/undotree'
" Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-rhubarb'
Plug 'godlygeek/tabular'
" Plug 'masukomi/vim-markdown-folding'

call plug#end()

" RSpec.vim mappings (map settings)
"=============================================================================

map <Leader>s :call RunCurrentSpecFile()<CR>
map <Leader>t :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
" map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
" map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
" map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>eh :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Date stamp mapping
" map <F10> :call  DateInsert()<CR> \| :write<CR>

" NERDTree config
"=============================================================================
highlight VertSplit cterm=NONE

" Colors
" highlight Directory ctermfg=cyan

highlight Comment cterm=italic

" Functions
" ============================================================================
" Date stamp function
function DateInsert()
	$r! date
endfunction

" Spelling
function! FixLastSpellingError()
	 normal! mm[s1z=`m
endfunction

" Strip trailing whitespaces
function <SID>StripTrailingWhiteSpaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" User-defined functions 
function! Random()
    return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
endfunction

" Set tabstop, softtabstop and shiftwidth to the same value
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

" An insert mode mapping to trigger the :Tabular command when you type the
" character that you want to align
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Conditionals
" ============================================================================
" Persistent Undotree settings
if has("persistent_undo")
	let target_path = expand('~/.undodir')

	" Create the directory and any parent directories
	" if the location does not exist.
	if !isdirectory(target_path)
		call mkdir(target_path, "p", 0700)
	endif

	let &undodir=target_path
	set undofile
endif

" Restore cursor position
autocmd BufReadPost *
 \ if line("'\"") > 1 && line("'\"") <= line("$") |
 \	 exe "normal! g`\"" |
 \ endif

" Whitespace preferences and filetypes
if has("autocmd")

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif
