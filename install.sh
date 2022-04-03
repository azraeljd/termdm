# TermDM Installer
#
# Installer for the TermDM display manager.
#
# Copyright (c) 2022 Azrael JD.
#
# This software is freely usable and distributable under
# the terms of the Azratek Free and Open Source Software
# License.
#
# Disclaimer:
# THIS SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY WARRANTY. IN NO EVENT SHALL
# THE AUTHORS, CONTRIBUTORS, NOR THE COPYRIGHT HOLDERS BE LIABLE FOR ANY
# DAMAGE CAUSED BY THE USE OF THIS SOFTWARE.

#!/bin/bash

echo "Installing TermDM..."

chmod +x .termdm/termdm

cp dotfiles/.xinitrc $HOME/.xinitrc
cp .termdm $HOME/.termdm

read -p "Start TermDM at login? " TERMDM_START_ON_LOGIN
case $TERMDM_START_ON_LOGIN in
  "y")
    echo "bash $HOME/.termdm/termdm" >> $HOME/.bashrc
    ;;
  "n")
    ;;
esac

echo "TermDM has been installed."
