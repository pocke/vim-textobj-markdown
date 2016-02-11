vim-textobj-markdown
===============

A text object for Markdown.



Installation
===============


This plugin is in need of [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user).


### [Shougo/neobundle.vim](https://github.com/Shougo/neobundle.vim)

```vim
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'pocke/vim-textobj-markdown'
```

If you want to use NeoBundleLazy.

```vim
NeoBundleLazy 'pocke/vim-textobj-markdown', {
\   'depends': 'kana/vim-textobj-user',
\   'on_map': [['xo', 'ac'], ['xo', 'ic']],
\ }
```

### [VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim) 

```vim
Plugin 'kana/vim-textobj-user'
Plugin 'pocke/vim-textobj-markdown'
```

### [tpope/vim-pathogen](https://github.com/tpope/vim-pathogen)

```sh
git clone https://github.com/kana/vim-textobj-user ~/.vim/bundle/vim-textobj-user
git clone https://github.com/pocke/vim-textobj-markdown ~/.vim/bundle/vim-textobj-markdown
```


Usage
=========


`dic` removes code in a codeblock.


TODO: screen capture

`dac` removes code in a codeblock and removes codeblock.

TODO: screen capture