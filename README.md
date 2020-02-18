# About

Vim Syntax Highlight support for CrySL. Until vim-plug or equivalent support
is added to this repo, please take the following steps to use this file:

* Place crysl.vim in syntax/ inside your .vim directory
* Enable support for syntax highlight by adding the following in your vimrc

```
autocmd BufNewFile,BufRead *.crysl set filetype=crysl
```


# Disclaimer

This is a PoC syntax highlight file that does not necessarily correspond to
all the options/semantics of CrySL
