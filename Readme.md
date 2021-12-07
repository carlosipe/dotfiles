# Dotfiles

## Clone repo and symlink config files

```sh
cd ~
git clone git@github.com:carlosipe/dotfiles.git
ln -s dotfiles/.gemrc
ln -s dotfiles/.gitconfig
ln -s dotfiles/.githooks
ln -s dotfiles/.gitignore_global
ln -s dotfiles/.vim
ln -s dotfiles/.vimrc
ln -s dotfiles/.bash_aliases
```

## Add aliases to .bash_profile

Just add

```sh
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

```

## Install vim Plug

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Install ripgrep

```sh
brew install ripgrep
```
