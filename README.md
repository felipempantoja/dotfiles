# Dotfiles

These are my dotfiles repository. This is a work-in-progress task and it will always be, however it's not ready to be used yet.
Versioning my dotfiles will be useful when I'll need to set up a new workstation without worrying too much about reconfigure things over and over.
Also, versioning my dotfiles allows me to upgrade and improve my setup for applying it everywhere I need, almost effortlessly.

## Linux Distros

Currently, I use two distros, which was based to create the ansible scripts:

- Manjaro
- Ubuntu

This repository may help you to provision your local workstation using other linux distros, but you may need to adapt one thing or another.

## First things first

In order to bootstrapping the local workstation, we need to do few things first:

### Run recommended steps after installing your linux distro (there's a bunch of articles over the internet with good tips). For example:

- Manjaro: https://itsfoss.com/things-to-do-after-installing-manjaro/
- Ubuntu: https://www.tecmint.com/things-to-do-after-installing-ubuntu-20-04/

### YADM

[YADM](https://yadm.io) is a Git Wrapper for versioning dotfiles and it has several benefits over standard Git cli, which can be checked out in its
own repository. I'm using YADM and it's one of the first things I need to install in order to applying my dotfiles in my machine.

### Ansible

[Ansible](https://www.ansible.com) delivers simple IT automation that ends repetitive tasks and frees up DevOps teams for more strategic work. I use this one to provision
all needed infrastructure my workstation demands. I prefer using ansible in this case instead of using standard bash scripts or so,
because it includes powerful features, such as:

- Error handling: This helps us preventing our setup to crash for any unexpected reason (i.e. network).
- Its idempotent nature: We can run and re-run our playbooks and always get the expected state, which is less error prone. Doing that in a shell script aproach can be far more complicated.
- Declarative x Imperative: In a nutshel, Shell scripts are imperative, or "how things need to be done", and Ansible is declarative, or "what need to be done". The latter is easier to understand and maintain.
- And so on...

## Neovim

## Inspirations

- [PauloPortual/manjaro-playbook](https://github.com/PauloPortugal/manjaro-playbook)
- [ChristianChiarulli/nvim](https://github.com/ChristianChiarulli/nvim)
- [gacha/vim-tiny](https://github.com/gacha/vim-tiny)
- [DarthNyan Gists](https://gist.github.com/DarthNyan)
- [mlaursen/vim-react-snippets](https://github.com/mlaursen/vim-react-snippets)

## Roadmap

- [x] autoload vscode plugins and personal configs from gist
- [x] personalize pacman (ilovecandy and color): https://github.com/archkiss/Arch-Linux-Tips-And-Tricks
- [ ] Smart separation of specific distro stuff and general stuff
