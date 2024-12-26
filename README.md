# .dotfiles

![preview](https://user-images.githubusercontent.com/34311583/218268187-8d333102-e487-40fc-baef-1f6237f326bc.png)

## Install notes

```sh
git clone --recursive --shallow-submodules \
  --filter=blob:none --also-filter-submodules \
  https://github.com/ttytm/dots
```

Set the `ZDOTDIR` in the default zshenv (example locations depending on the installation `/etc/zsh/zshenv`, `~/.zshenv`):

```sh
export ZDOTDIR=$HOME/.config/zsh
```
