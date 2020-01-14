# madetaras' dotfiles

## Contents

### Neovim

Located in neovim folder
Contains settings for development in following languages:

- F#
- Rust
- Haskell

## Prerequisites

Currently manual installation of all dependencies is required, which include:

- [neovim](https://github.com/neovim/neovim)
- [vim-plug](https://github.com/junegunn/vim-plug)
- [rust-analyzer](https://github.com/rust-analyzer/rust-analyzer)
- [haskell-ide-engine](https://github.com/haskell/haskell-ide-engine)
- [the-silver-searcher](https://github.com/ggreer/the_silver_searcher)
- .NET Core and mono

## Installation

```shell
git clone git@github.com:madetara/dotfiles.git && \
cd dotfiles && \
chmod +x install.sh && \
./install.sh && \
nvim +:PlugInstall +:UpdateRemotePlugins +qall
```
