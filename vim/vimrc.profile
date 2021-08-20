SCRIPT  /home/etbcf/.vimrc
Sourced 1 time
Total time:   0.053556
 Self time:   0.053556

count  total (s)   self (s)
                            "=============================================================================
                            "~.vimrc~
                            "=============================================================================
                            
                            " Editor settings
                            "=============================================================================
    1              0.023665 syntax on
    1              0.000383 filetype plugin on
    1              0.000245 set nocompatible
    1              0.000146 filetype on
    1              0.000318 filetype indent on
    1              0.000012 highlight SpecialKey ctermfg=8
    1              0.000006 highlight NonText ctermfg=8
                            
                            
    1              0.001586 runtime macros/matchit.vim
                            
                            " Let command settings
                            "=============================================================================
                            " Want to set this before any others
    1              0.000009 let mapleader ="\<Space>"
                            
                            " Make CtrlP use ag for listing the files. Way faster and no useless files.
                            " Without --hidden, it never finds .travis.yml since it starts with a dot
    1              0.000047 let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
    1              0.000006 let g:ctrlp_use_caching = 0
                            
    1              0.000007 let g:rspec_command = "VtrSendCommandToRunner! rspec {spec}"
                            
                            " NERDTree arrows
    1              0.000006 let g:NERDTreeDirArrowExpandable = ''
    1              0.000004 let g:NERDTreeDirArrowCollapsible = ''
                            
                            " vim-ruby-syntax
                            " Ruby: Operator highlighting
    1              0.000005 let ruby_operators = 1
    1              0.000005 let ruby_pseudo_operators = 1
                            
                            " Ruby: Whitespace errors
    1              0.000006 let ruby_space_errors = 1
                            
                            " Ruby: Spellchecking strings
    1              0.000005 let ruby_spellcheck_strings = 1
                            
    1              0.000011 let g:lightline = { 'colorscheme': 'powerline', }
                            
                            "  Normal mode mappings
                            "=============================================================================
                            " Easy access to the start of the line
                            " nmap 0 ^
                            
                            " Shortcut to insert numbers from 1 to ... nth
    1              0.000028 nmap <leader>in :%s/^/\=printf('%-3d', line('.'))<cr>
                            
                            " Split easier
    1              0.000018 nmap <leader>rc :vs $MYVIMRC<cr>
    1              0.000014 nmap <leader>vr :sp<cr>
    1              0.000013 nmap <leader>hr :vs<cr>
                            
                            " Source easier.. don't forget to write first
    1              0.000017 nmap <leader>so :source $MYVIMRC<cr>
                            
                            " Pre-populate a split command with the current directory
    1              0.000025 nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>
                            
                            " Copy the entire buffer into the system register
    1              0.000014 nmap <leader>co ggVG*y
                            
                            " Show invisible charaters
    1              0.000015 nmap <leader>c :set list!<CR>
                            
                            " Move up and down by visible lines if current line is wrapped
    1              0.000008 nmap j gj
    1              0.000008 nmap k gk
                            
                            " Text-mate indent style
                            " nmap <S-[> <<
                            " nmap <S-]> >>
                            
                            " Visual mappings
                            " ============================================================================ 
                            " Text-mate select indent style
    1              0.000016 vmap <C-[> <gv
    1              0.000015 vmap <C-]> >gv 
                            
                            " Toggle spell checking on and off with 'spc s'
    1              0.000017 nmap <silent> <leader>or :set spell!<CR>
                            
                            " Insert mappings
                            "=============================================================================
                            " Caps Lock to Esc
    1              0.000009 imap jk <esc>
                            
                            " Set settings
                            "=============================================================================
    1              0.000007 set number                      " Line numbers
    1              0.000004 set relativenumber              " Relative numbers
    1              0.000232 set nocompatible                " Don't maintain compatibilty with Vi.
    1              0.000005 set hidden                      " Allow buffer change w/o saving
    1              0.000003 set nohlsearch                  " No highlight all while I'm searching
    1              0.000004 set incsearch                   " Highlight while I'm typing
    1              0.000004 set smartindent
    1              0.000003 set lazyredraw                  " Don't update while executing macros
    1              0.000007 set backspace=indent,eol,start  " Sane backspace behavior
    1              0.000006 set history=1000                " Remember last 1000 commands
    1              0.000005 set scrolloff=4                 " Keep at least 4 lines below cursor
                            " set signcolumn=yes              " Adds an side column on the left
    1              0.000006 set colorcolumn=79              " Line lenght limit warning bar
    1              0.000005 set noswapfile                  " Disable swapfile
    1              0.000011 set fillchars+=vert:▏
    1              0.000022 set t_ZH=[3m
    1              0.000014 set t_ZR=[23m
    1              0.000013 set laststatus=2
    1              0.000004 set ignorecase
    1              0.000004 set infercase
    1              0.000007 set dictionary=/usr/share/dict/cracklib-small
    1              0.000006 set complete=.,b,d,i,k,t,u,w
    1              0.000004 set showfulltag
                            " set backup
                            " set patchmode=.bak
    1              0.000010 set listchars=tab:▸\ ,eol:¬
    1              0.000003 set list
    1              0.000008 set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
                            " Auto commands
                            "=============================================================================
                            " Automatically rebalance windows on vim resize
    1              0.000018 autocmd VimResized * :wincmd =
                            
                            " Automatic date insert at write... this calls the DateInsert() function
                            " autocmd BufWritePre *.txt call DateInsert()
                            
                            "Only do this part when compiled with support for autocommands
                            " autocmd BufWritePre *.txt, *.rb, *.py, *.js :call <SID>StripTrailingWhiteSpaces()
                            
                            " Easy way to closehelp files
    1              0.000013 autocmd Filetype help nmap <buffer> q :q<CR>
                            
                            " Disable line numbers for text files
    1              0.000003 augroup Text
    1              0.000334 	autocmd!
    1              0.000011 	autocmd Filetype text setlocal cc=
    1              0.000007 	autocmd Filetype text setlocal nonumber norelativenumber
    1              0.000010 	autocmd BufWinEnter *.txt set showbreak=...
    1              0.000008 	autocmd BufWinEnter text set textwidth=79
    1              0.000005 	autocmd BufWinEnter text set nocolorcolumn
    1              0.000002 augroup END
                            
                            " nnoremap
                            "=============================================================================
                            " zoom a vim pane, <C-w>= to re-balance
    1              0.000027 nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
    1              0.000018 nnoremap <leader>= :wincmd =<cr>
                            
    1              0.000044 nnoremap <leader>va :VtrAttachToPane<cr>
    1              0.000020 nnoremap <leader>sl :VtrSendLinesToRunner<cr>
    1              0.000030 noremap <leader>fr :VtrFocusRunner<cr>
    1              0.000020 nnoremap <leader>sc :VtrSendCommandToRunner<cr>
    1              0.000023 nnoremap <leader>sf :VtrSendFile<cr>
                            
    1              0.000015 nnoremap <F12> :NERDTreeToggle<CR>
                            
                            " Undotree toggle
    1              0.000013 nnoremap <F5> :UndotreeToggle<CR>
                            
                            " Spelling fix.. function in line 215
    1              0.000019 nnoremap <leader>sp :call FixLastSpellingError()<cr>
                            
                            " Creating a mapping to perform calculations
    1              0.000014 nnoremap Q 0yt=A <C-r>=<C-r>"<CR><Esc>
                            
                            " Hit the <F4> key to remove trailing whitespaces... function in line 225
    1              0.000021 nnoremap <silent> <F4> :call <SID>StripTrailingWhiteSpaces()<CR>
                            
                            " inoremap settings
                            " ============================================================================ 
                            " Map tab for ruby-vim omni-completion
    1              0.000010 inoremap <tab> <C-x><C-o>
                            
                            " Tabular function
    1              0.000016 inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
                            
                            " Command aliases for typoed commands (accidentally holding shift too long)
                            "=============================================================================
    1              0.000012 command! Q q " Bind :Q to :q
    1              0.000005 command! Qall qall
    1              0.000006 command! QA qall
    1              0.000004 command! E e
    1              0.000033 command! -nargs=* -complete=shellcmd R new | setlocal buftype=nofile bufhidden=hide noswapfile | r !<args>
                            
                            " Set tabstop, softtabstop and shiftwidth to the same value
    1              0.000008 command! -nargs=* Stab call Stab()
                            
                            " Wrap lines and breaks lines
    1              0.000012 command! -nargs=* Wrap set wrap linebreak nolist
                            
                            " Vim-Plug stuff
                            "=============================================================================
    1              0.005054 call plug#begin('~/.vim/plugged')
                            
    1              0.000387 Plug 'christoomey/vim-tmux-runner'
    1              0.000319 Plug 'christoomey/vim-tmux-navigator'
    1              0.000293 Plug 'christoomey/vim-conflicted'
    1              0.000287 Plug 'ctrlpvim/ctrlp.vim'
    1              0.000279 Plug 'tpope/vim-surround'
    1              0.000312 Plug 'tpope/vim-commentary'
    1              0.000285 Plug 'tpope/vim-repeat'
    1              0.000391 Plug 'tpope/vim-fugitive'
    1              0.000371 Plug 'junegunn/goyo.vim'
    1              0.000310 Plug 'thoughtbot/vim-rspec'
    1              0.000336 Plug 'preservim/nerdtree'
    1              0.000354 Plug 'ryanoasis/vim-devicons'
    1              0.000322 Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    1              0.000307 Plug 'jiangmiao/auto-pairs'
    1              0.000308 Plug 'tpope/vim-endwise'
    1              0.000367 Plug 'vim-ruby/vim-ruby'
    1              0.000286 Plug 'mbbill/undotree'
                            " Plug 'itchyny/lightline.vim'
                            " Plug 'vim-airline/vim-airline'
    1              0.000266 Plug 'nelstrom/vim-textobj-rubyblock'
    1              0.000313 Plug 'kana/vim-textobj-user'
    1              0.000369 Plug 'tpope/vim-bundler'
    1              0.000238 Plug 'tpope/vim-rake'
    1              0.000204 Plug 'tpope/vim-unimpaired'
    1              0.000207 Plug 'tpope/vim-rhubarb'
    1              0.000197 Plug 'godlygeek/tabular'
                            " Plug 'masukomi/vim-markdown-folding'
                            
    1              0.012927 call plug#end()
                            
                            " RSpec.vim mappings (map settings)
                            "=============================================================================
                            
    1              0.000017 map <Leader>s :call RunCurrentSpecFile()<CR>
    1              0.000009 map <Leader>t :call RunNearestSpec()<CR>
    1              0.000009 map <Leader>l :call RunLastSpec()<CR>
    1              0.000008 map <Leader>a :call RunAllSpecs()<CR>
                            
                            " map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
                            " map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
                            " map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
                            " map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>
                            
    1              0.000009 cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
    1              0.000007 map <leader>ew :e %%
    1              0.000006 map <leader>eh :sp %%
    1              0.000006 map <leader>ev :vsp %%
    1              0.000006 map <leader>et :tabe %%
                            
                            " Date stamp mapping
                            " map <F10> :call  DateInsert()<CR> \| :write<CR>
                            
                            " NERDTree config
                            "=============================================================================
    1              0.000005 highlight VertSplit cterm=NONE
                            
                            " Colors
                            " highlight Directory ctermfg=cyan
                            
    1              0.000003 highlight Comment cterm=italic
                            
                            " Functions
                            " ============================================================================
                            " Date stamp function
    1              0.000002 function DateInsert()
                            	$r! date
                            endfunction
                            
                            " Spelling
    1              0.000002 function! FixLastSpellingError()
                            	 normal! mm[s1z=`m
                            endfunction
                            
                            " Strip trailing whitespaces
    1              0.000003 function <SID>StripTrailingWhiteSpaces()
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
    1              0.000001 function! Random()
                                return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
                            endfunction
                            
                            " Set tabstop, softtabstop and shiftwidth to the same value
    1              0.000001 function! Stab()
                              let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
                              if l:tabstop > 0
                                let &l:sts = l:tabstop
                                let &l:ts = l:tabstop
                                let &l:sw = l:tabstop
                              endif
                              call SummarizeTabs()
                            endfunction
                            
    1              0.000002 function! SummarizeTabs()
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
    1              0.000001 function! s:align()
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
    1              0.000006 if has("persistent_undo")
    1              0.000011 	let target_path = expand('~/.undodir')
                            
                            	" Create the directory and any parent directories
                            	" if the location does not exist.
    1              0.000005 	if !isdirectory(target_path)
                            		call mkdir(target_path, "p", 0700)
    1              0.000001 	endif
                            
    1              0.000004 	let &undodir=target_path
    1              0.000003 	set undofile
    1              0.000001 endif
                            
                            " Restore cursor position
    1              0.000007 autocmd BufReadPost *
                             \ if line("'\"") > 1 && line("'\"") <= line("$") |
                             \	 exe "normal! g`\"" |
                             \ endif
                            
                            " Whitespace preferences and filetypes
    1              0.000003 if has("autocmd")
                            
                              " Syntax of these languages is fussy over tabs Vs spaces
    1              0.000005   autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    1              0.000005   autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
                            
                              " Customisations based on house-style (arbitrary)
    1              0.000003   autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
    1              0.000003   autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    1              0.000005   autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
                            
                              " Treat .rss files as XML
    1              0.000005   autocmd BufNewFile,BufRead *.rss setfiletype xml
    1              0.000003 endif

FUNCTION  SummarizeTabs()
    Defined: ~/.vimrc:302
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
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

FUNCTION  FixLastSpellingError()
    Defined: ~/.vimrc:269
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                            	 normal! mm[s1z=`m

FUNCTION  <SNR>3_StripTrailingWhiteSpaces()
    Defined: ~/.vimrc:274
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                " Preparation: save last search, and cursor position.
                                let _s=@/
                                let l = line(".")
                                let c = col(".")
                                " Do the business:
                                %s/\s\+$//e
                                " Clean up: restore previous search history, and cursor position
                                let @/=_s
                                call cursor(l, c)

FUNCTION  Random()
    Defined: ~/.vimrc:287
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                                return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])

FUNCTION  <SNR>3_align()
    Defined: ~/.vimrc:320
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                              let p = '^\s*|\s.*\s|\s*$'
                              if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
                                let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
                                let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
                                Tabularize/|/l1
                                normal! 0
                                call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
                              endif

FUNCTION  DateInsert()
    Defined: ~/.vimrc:264
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                            	$r! date

FUNCTION  Stab()
    Defined: ~/.vimrc:292
Called 0 times
Total time:   0.000000
 Self time:   0.000000

count  total (s)   self (s)
                              let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
                              if l:tabstop > 0
                                let &l:sts = l:tabstop
                                let &l:ts = l:tabstop
                                let &l:sw = l:tabstop
                              endif
                              call SummarizeTabs()

FUNCTIONS SORTED ON TOTAL TIME
count  total (s)   self (s)  function
                             SummarizeTabs()
                             FixLastSpellingError()
                             <SNR>3_StripTrailingWhiteSpaces()
                             Random()
                             <SNR>3_align()
                             DateInsert()
                             Stab()

FUNCTIONS SORTED ON SELF TIME
count  total (s)   self (s)  function
                             SummarizeTabs()
                             FixLastSpellingError()
                             <SNR>3_StripTrailingWhiteSpaces()
                             Random()
                             <SNR>3_align()
                             DateInsert()
                             Stab()

