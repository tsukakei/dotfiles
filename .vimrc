set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set smarttab
set incsearch
set ignorecase
set smartcase
set hlsearch
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
set nocompatible
set directory=$HOME/vimtmp
set backupdir=$HOME/vimbackup
set clipboard=unnamed
set number
set hidden
set shiftwidth=2
set list
set listchars=eol:$,tab:>\ ,extends:<
set whichwrap=b,s,h,l,<,>,[,]
set showmatch
set smartcase
set nowrapscan
set noundofile

if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

if has('vim_starting')
    " 初回起動時のみruntimepathにNeoBundleのパスを指定する
    set runtimepath+=~/.vim/bundle/neobundle.vim/

    " NeoBundleが未インストールであればgit cloneする・・・・・・①
    if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
        echo "install NeoBundle..."
        :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
    endif
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" インストールするVimプラグインを以下に記述
" NeoBundle自身を管理
NeoBundleFetch 'Shougo/neobundle.vim'
"----------------------------------------------------------
" ここに追加したいVimプラグインを記述する・・・・・・②
" カラースキームmolokai
NeoBundle 'tomasr/molokai'
" ステータスラインの表示内容強化
NeoBundle 'itchyny/lightline.vim'
" 末尾の全角と半角の空白文字を赤くハイライト
NeoBundle 'bronson/vim-trailing-whitespace'
" インデントの可視化
NeoBundle 'Yggdroot/indentLine'
"----------------------------------------------------------
call neobundle#end()
" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

" 未インストールのVimプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定・・・・・・③
NeoBundleCheck
colorscheme desert
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する
if neobundle#is_installed('molokai') " molokaiがインストールされていれば
    colorscheme molokai " カラースキームにmolokaiを設定する
endif
syntax on
syntax enable
