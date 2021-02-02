#!/bin/bash

set -x

searchQuery=${1}
if [ ! -z "${2}" ]; then
  searchQuery="${1} ${2}"
fi

searchResult=`pacman -Q | grep "$searchQuery"`

# Only install if package does not exist
if [ -z "${searchResult}" ]; then
  echo "Installing"
  echo "Download Arch linux AUR package"
  wget https://aur.archlinux.org/cgit/aur.git/snapshot/${1}.tar.gz -P /tmp/${1}

  echo "Extract package"
  tar -xvzf /tmp/${1}/${1}.tar.gz -C /tmp/${1}/

  echo "Create install package"
  cd /tmp/${1}/${1}
  makepkg -s --skippgpcheck

  echo "Install package"
  sudo pacman -U *xz --noconfirm

  echo "Remove temporary folder"
  rm -rf /tmp/${1}
else
  echo "${searchQuery} package already installed"
  exit -1;
fi
