# .dotfiles

<a target="_blank" href="https://user-images.githubusercontent.com/34311583/218268187-8d333102-e487-40fc-baef-1f6237f326bc.png">
  <img alt="preview-screen1" src="https://user-images.githubusercontent.com/34311583/218268187-8d333102-e487-40fc-baef-1f6237f326bc.png">
</a>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; _most of the neovim config will usually be found in <a target="_blank" href="https://github.com/tenxsoydev/nxvim">nxvim</a>._

## Install notes

```sh
git clone --recursive --shallow-submodules \
  --filter=blob:none --also-filter-submodules \
  https://github.com/ttytm/dots
```

Set the `ZDOTDIR`. E.g. if zsh is installed via pacman:

```sh
# /etc/zsh/zshenv
export ZDOTDIR=$HOME/.config/zsh
. $ZDOTDIR/.zshenv
```
