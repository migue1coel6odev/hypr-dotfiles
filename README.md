# hypr-dotfiles

# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git;

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/migue1coel6odev/hypr-dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ cd dotfiles
$ stow -t ~ . --adopt
```

## Execute install script

```
  $ cd scripts
  $ source install.sh
```
