set nocompatible                  " Must come first because it changes other options.

call plug#begin('~/.vim/bundle')
"
"" *************************
" General Enhancements
" " *************************
"
" " Adds icons to stuff like NERDTREE, Airline, etc
Plug 'https://github.com/ryanoasis/vim-devicons'
"
" " Binary Search Tool
" " Plug 'https://github.com/dahu/bisectly', { 'on': 'Bisectly'}
"
" " Syntastic... Yahoo
Plug 'vim-syntastic/syntastic'

" " Dark-powered Async completion (needs python3)
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
" " Add flow to deoplete
 Plug 'wokalski/autocomplete-flow'
"
" " Function argument completion for Deoplete
" Plug 'Shougo/neosnippet'
 Plug 'Shougo/neosnippet-snippets'
"
" " Bottom bar with all settings
 Plug 'itchyny/lightline.vim'
"
" " Alignment
 Plug 'austintaylor/vim-indentobject'
"
" " Align anything using `ga` command
 Plug 'junegunn/vim-easy-align'
"
" " Toggles a sidebar!
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"
" " Fancy start screen. Lets you open empty buffers, multiple files, etc
 Plug 'mhinz/vim-startify'
"
" " Snap windows without ruining your layout using ,ww
" Plug 'https://github.com/wesQ3/vim-windowswap'
"
" " Remaps . in a way that plugins can use it too!
 Plug 'tpope/vim-repeat'
"
" " Easily delete, change and add surroundings in pairs
 Plug 'tpope/vim-surround'
"
" "Bracket maps
 Plug 'tpope/vim-unimpaired'
"
" " Indent Guides
 Plug 'nathanaelkane/vim-indent-guides', {'on': ['IndentGuidesToggle', 'IndentGuidesEnable']}
"
" " Automatic closing of quotes, parenthesis, brackets, etc
 Plug 'Raimondi/delimitMate'
"
" " Change inside surroundings
 Plug 'briandoll/change-inside-surroundings.vim'
"
" " focus region, NR will open selected part in new split window
 Plug 'chrisbra/NrrwRgn'
"
" " Comments using gcc / gcgc
 Plug 'git://github.com/tpope/vim-commentary.git'
"
" " Async linting
" Plug 'w0rp/ale'
"
" " Git
" " Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity']
" }
" " https://github.com/junegunn/vim-github-dashboard
 Plug 'https://github.com/rhysd/committia.vim', { 'for': ['gitcommit']}
 Plug 'tpope/vim-fugitive'
 Plug 'tpope/vim-git'
 Plug 'airblade/vim-gitgutter'
"
"Vim tmux integration
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" Polymer ide stuf
Plug  'webdesus/polymer-ide.vim', { 'do': 'npm install' }
"
" " *************************
" " Themes
" " *************************
"
" Plug 'morhetz/gruvbox'
" Plug 'mhartington/oceanic-next'
"
"
" " *************************
" " Text-Related
" " *************************
"
" " Expands on commands like 'delete inside' by adding more targets
 Plug 'https://github.com/wellle/targets.vim'
"
" " Better job of detecting sentences
 Plug 'https://github.com/reedes/vim-textobj-sentence'
"
" " Makes operating on columns super easy
 Plug 'coderifous/textobj-word-column.vim'
 Plug 'kana/vim-textobj-datetime'
 Plug 'kana/vim-textobj-entire'
 Plug 'kana/vim-textobj-function'
 Plug 'kana/vim-textobj-user'
 Plug 'lucapette/vim-textobj-underscore'
 Plug 'vim-scripts/argtextobj.vim'
"
" " Find & replace, etc
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
 Plug 'rking/ag.vim'
 Plug 'junegunn/vim-fnr' | Plug 'junegunn/vim-pseudocl' " find & replace
 Plug 'vim-scripts/greplace.vim'
 Plug 'https://github.com/simnalamburt/vim-mundo'
 Plug 'https://github.com/tpope/vim-abolish' " AWESOME case-sensitive replace
 Plug 'vim-scripts/matchit.zip'
"
" " *************************
" " Language-Related
" " *************************
"
" " Handlebars / Mustache
" Plug 'juvenn/mustache.vim'
" Plug 'nono/vim-handlebars'
"
" " Javascript
 Plug 'https://github.com/othree/javascript-libraries-syntax.vim', { 'for': [ 'javascript', 'js', 'jsx' ]}
 Plug 'thinca/vim-textobj-function-javascript',    { 'for': [ 'javascript', 'js', 'jsx' ]}
 Plug '1995eaton/vim-better-javascript-completion', { 'for': [ 'javascript', 'js', 'jsx' ]}
"
" " Indentation
 Plug 'gavocanov/vim-js-indent', { 'for': [ 'javascript', 'js', 'jsx' ]}
"
" " Toolkit - no syntax highlighting https://github.com/moll/vim-node
 Plug 'moll/vim-node', { 'for': [ 'javascript', 'js', 'jsx' ]} 
"
 Plug 'chemzqm/vim-jsx-improve', { 'for': [ 'javascript', 'js', 'jsx' ]}
"
" " Plug 'othree/yajs.vim', { 'for': [ 'javascript', 'js', 'jsx' ]}
" " Plug 'othree/es.next.syntax.vim', { 'for': [ 'javascript', 'js', 'jsx' ]}
"
" SCSS and CSS syntax highlighting
	if v:version < 704
	  Plug 'JulesWang/css.vim'
	endif
	Plug 'cakebaker/scss-syntax.vim'

	" HTML
	Plug 'tpope/vim-ragtag'
	Plug 'AndrewRadev/splitjoin.vim'
	Plug 'skwp/vim-html-escape', {'for': ['html']}

" " Plug 'pangloss/vim-javascript', { 'for': [ 'javascript', 'js', 'jsx' ]}
" "Base syntax highlighter
" " Plug 'mxw/vim-jsx', { 'for': [ 'javascript', 'js', 'jsx' ]}
"

call plug#end()

" call pathogen#runtime_append_all_bundles() "Loads Bundles using` the pathogen plugin.
"
syntax enable                     " Turn on syntax highlighting.
set background=dark
"colorscheme solarized               " Set the color Scheme
colorscheme molokai               " Set the color Scheme<br>"

runtime macros/matchit.vim        " Load the matchit plugin.
"
filetype plugin on                " Enable Plugins
filetype indent on                " Enable auto indent
"
set textwidth=79                  " Auto line break at specified character count
set nowrap                        " Set text to nowrap
"
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
"
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
"
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains" a capital letter.
set number                        " Show line numbers.
set ruler                         " Show cursor position.
"
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
"
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set the terminal's title
set visualbell                    " No beeping.
"
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set backupdir=$HOME/.vim/tmp//,.  " Keep swap files in one location
"
set tabstop=2                    " Global tab width.
set softtabstop=2
set shiftwidth=2                 " And again, related.
set noexpandtab                    " Use spaces instead of tabs

set clipboard=unnamed           " Set system clipboard to default register

" Syntastic
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Polymer ide
"
	 autocmd Filetype html nmap <F12> :call polymer_ide#GoToDefinition(':vs')<CR>
	 autocmd Filetype html imap <F12> :call polymer_ide#GoToDefinition(':vs')<CR>

" Show documentation about tag or attribute using {F1} key: >

	 autocmd Filetype html imap nmap <F1> :call polymer_ide#ShowDocumentation()<CR>
	 autocmd Filetype html imap imap <F1> :call polymer_ide#ShowDocumentation()<CR>

" Show error under cursor {F2} key: >

	 autocmd Filetype html nmap <F2> :call polymer_ide#ShowError(line('.'))<CR>
	 autocmd Filetype html imap <F2> :call polymer_ide#ShowError(line('.'))<CR>

" Show next error under cursor {Ctrl}, {Alt} and {down} keys: >

	 autocmd Filetype html nmap <C-A-DOWN> :call polymer_ide#NextError()<CR>
	 autocmd Filetype html imap <C-A-DOWN> :call polymer_ide#NextError()<CR>

" Show previous error under cursor {Ctrl}, {Alt} and {up} keys: >

	 autocmd Filetype html nmap <C-A-UP> :call polymer_ide#PreviousError()<CR>
	 autocmd Filetype html imap <C-A-UP> :call polymer_ide#PreviousError()<CR>

" Enable Syntastic support. 
" Careful: For successful work required installed plugin Syntastic   >
  let g:polymer_ide#use_syntastic = 1
  let g:syntastic_html_checkers = [ 'polylint']

autocmd FileType python set expandtab
"
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END	

set laststatus=2                  " Show the status line all the time
 " Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\%)%P
"
" Date insert mappings
:nnoremap <F5> "=strftime("%b %d, %Y")<CR>P
:inoremap <F5> <C-R>=strftime("%b %d, %Y")<CR>
"Easier splinavagations

" Vim NerdTree
map <Leader>n :NERDTreeToggle<CR>

" Vim-tumx
" " Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Zoom the tmux runner pane
map <Leader>vz :VimuxZoomRunner<CR>
" Note mappings
vmap <Leader>ns :NoteFromSelectedText<CR>
" Need to map defaults i.e. sym link if I want them to persist elsewhere
" let g:notes_directories = ['~/dotvim/notes']
 let g:notes_directories = ['~/notes']
"
" Vim needs to be compiled with Ruby for LustyExplorer to work; here are the
" instructions.
"
" 1. Install Ruby
" 2. Download the Vim source package (say, vim-7.0.tar.bz2)
" 3. Build and install:
" # tar -xvjf vim-7.0.tar.bz2
" # ./configure --enable-rubyinterp
" # make && make install
" (If you just wish to stifle this message, set the following option: 
" let g:LustyExplorerSuppressRubyWarning = 1)
"
let g:LustyExplorerSuppressRubyWarning = 1

source ~/.vim/lightline.rc.vim
