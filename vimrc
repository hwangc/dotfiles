" General Settings {
    syntax on
    set t_Co=256
    set noswapfile
    set nobackup
    set background=dark
    set number
    set clipboard=unnamed
    colorscheme monokai
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => Text, tab and indent related
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " Use spaces instead of tabs
    set expandtab

    " Be smart when using tabs ;)
    set smarttab

    " 1 tab == 2 spaces
    set shiftwidth=2
    set tabstop=4

    " Linebreak on 500 characters
    set lbr
    set tw=500

    set ai "Auto indent
    set si "Smart indent
    set wrap "Wrap lines
    set pastetoggle=<f5>
"    set timeoutlen=50
    " display incomplete commands
    set showcmd
" }

" Mapping Settings {
    "Disable arrow keys for movement in both insert and cmd mode
    "nnoremap <Left>   <NOP>
    "nnoremap <Right>  <NOP>
    "noremap <Up>     <NOP>
    "noremap <Down>   <NOP>
   " Keyboard overrides
    imap jk <ESC>

    " Show syntax highlighting groups for word under cursor
    nmap <C-S-P> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
        if !exists("*synstack")
            return
        endif
        echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunc
" }

" Vundle Settings {
    set nocompatible              " be iMproved, required
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'gmarik/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'tpope/vim-fugitive'
    Plugin 'edkolev/tmuxline.vim'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'open-browser.vim'
    Plugin 'scrooloose/syntastic'
    Plugin 'scrooloose/nerdtree'
    Plugin 'Lokaltog/vim-easymotion'
    Plugin 'junegunn/goyo.vim'
    Plugin 'instant-markdown.vim'
    Plugin 'junegunn/fzf' 
    Plugin 'tpope/vim-surround'
    Plugin 'jelera/vim-javascript-syntax'
    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList       - lists configured plugins
    " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
"   }

" Airline Settings {
    let g:airline_theme='powerlineish'
    let g:airline_powerline_fonts = 1
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    set laststatus=2
" }

" UltiSnips Settings {
    let g:UltiSnipsExpandTrigger="<c-k>"
    let g:UltiSnipsJumpForwardTrigger="<c-k>"
    let g:UltiSnipsJumpBackwardTrigger="<s-c-j>"
" }

" EasyMotion Settings {
    let g:EasyMotion_do_mapping = 0 " Disable default mappings

    " Bi-directional find motion
    " Jump to anywhere you want with minimal keystrokes, with just one key binding.
    " `s{char}{label}`
    nmap s <Plug>(easymotion-s)
    " or
    " `s{char}{char}{label}`
    " Need one more keystroke, but on average, it may be more comfortable.
    nmap s <Plug>(easymotion-s2)

    " Turn on case insensitive feature
    let g:EasyMotion_smartcase = 1

    " JK motions: Line motions
    map <Leader>l <Plug>(easymotion-lineforward)
    map <Leader>j <Plug>(easymotion-j)
    map <Leader>k <Plug>(easymotion-k)
    map <Leader>h <Plug>(easymotion-linebackward)

    let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

    map  / <Plug>(easymotion-sn)
    omap / <Plug>(easymotion-tn)

    " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
    " Without these mappings, `n` & `N` works fine. (These mappings just provide
    " different highlight method and have some other features )
    map  n <Plug>(easymotion-next)
    map  N <Plug>(easymotion-prev)
" }

"FZF Settings {
    set rtp+=~/.vim/bundle/fzf
    " ctrl-[a-z], alt-[a-z], f[1-4], or any single character
    let g:fzf_action = {
        \ 'ctrl-m': 'e',
        \ 'ctrl-t': 'tabedit',
        \ 'alt-j':  'botright split',
        \ 'alt-k':  'topleft split',
        \ 'alt-h':  'vertical topleft split',
        \ 'alt-l':  'vertical botright split' }
" }

"InstantMarkDown Settings {
    let g:instant_markdown_autostart = 0
" }
