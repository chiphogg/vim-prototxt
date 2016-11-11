# vim-prototxt

A filetype plugin for `.prototxt` files.

The main use case is [caffe](http://caffe.berkeleyvision.org/) models, which use this format.  Right now, this plugin only provides naive bare-bones syntax highlighting.  However, even this small change dramatically improves readability.

It would be great to provide more caffe-specific highlighting.  For example, if we could highlight all the caffe keywords, it would be easier to spot spelling errors for field names.  However, I have no idea how to reliably detect that a file is for caffe (as opposed to some other kind of `.prototxt` file), so I'm sticking with this very simple "80% solution" for now.

# Installation

With Pathogen

    cd ~/.vim/bundle
    git clone git://github.com/chiphogg/vim-prototxt.git

With Vundle

    " .vimrc
    Plugin 'chiphogg/vim-prototxt'

--

**Note**: Since `vim-prototxt` uses `filetype` detection, when installing with [vundle](https://github.com/VundleVim/Vundle.vim) it is important to have the right ordering of commands in your `.vimrc` (explained in detail [here](https://github.com/VundleVim/Vundle.vim/issues/16)) to ensure `ftdetect` functions correctly. The required ordering is:

    filetype off
    
    ...

    call vundle#Begin()
    ...other plugins...
    Plugin 'chiphogg/vim-prototxt'
    call vundle#end()
    
    ...

    " turn on filetype-specific indentation (must be called after Vundle)
    filetype plugin indent on 
    
# License

Copyright (c) Chip Hogg.  Distributed under the same terms as Vim itself.  See `:help license`.
