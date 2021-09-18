# zingus/ToggleGuiFontSize

## What does it do?

Allows you to bind a single button to a fontsize change in Vim.

## Why isn't this trivial

Fontsize changes resize the gvim window. It's painful to watch.

This plugin tries to minimize this resizing dance by setting the &lines and &columns gvim options to sensible values.

## How to install

Use Vim 8.x, please: it's 2021.

Add the following lines to your ~/.vimrc file. (%HOMEDRIVE%%HOMEPATH%/vimfiles/vimrc on Windows)

    call plug#begin('~/vimfiles/pack/plugged/start')
      Plug 'zingus/ToggleGuiFontSize'
    call plug#end()

    map <F5> :call ToggleGuiFontSize(17,12)<cr><cr>
    imap <F5> <Esc>:call ToggleGuiFontSize(17,12)<cr><cr>i

Restart Vim.

Type the :PlugInstall command.

Done.

## License

Distributed under the terms of the GPL-3.0-or-later license
