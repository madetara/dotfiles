# madetaras' dotfiles

## Contents

### Neovim

Located in neovim folder
Contains settings for development in following languages:

- F#
- Rust
- Haskell

## Prerequisites

Currently manual installation of some dependencies is required, which include:

- [neovim](https://github.com/neovim/neovim)
- [rust-analyzer](https://github.com/rust-analyzer/rust-analyzer)
- [haskell-ide-engine](https://github.com/haskell/haskell-ide-engine)
- .NET Core and mono

## Installation

```shell
git clone git@github.com:madetara/dotfiles.git && \
cd dotfiles && \
make install
```

If using WSL additionaly run following command and install [windows XServer](https://sourceforge.net/projects/vcxsrv/)
```shell
make wsl-clip
```
