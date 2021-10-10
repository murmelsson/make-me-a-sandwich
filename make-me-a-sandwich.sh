#!/bin/bash
##############################
# https://xkcd.com/149/33    #
# This script implements the #
# nerdy joke from above url: #
#                            #
# "Make me a sandwich."      #
#          "What? Make it    #
#           yourself."       #
# "Sudo make me a sandwich." #
#          "Okay."           # 
##############################
###################################################################
# murmelssonic, helsinki                                          #
# 09.10.2021 (dd.mm.yyyy)                                         #
# Licensed under: https://creativecommons.org/licenses/by-nc/2.5/ #
###################################################################

# Test whether the script is being run as non-root user,
# or as the root user (whether via sudo or su):
if [ "$(whoami)" != "root" ]; then
# user is not root:
  echo "What? Make it yourself."
else
# user is root:
  echo "Okay."
  echo
  sleep 1
  echo "======"
  echo "<-¨'*>"
  echo "======"
fi

# To make this script executable: chmod +x make-me-a-sandwich.sh
# To run as a command, make an alias in your relevant shell config file.
# So for example, if using zsh, then in file ~/.zshrc 
# add this line (without the comment character '#' obviously):
# alias make-me-a-sandwich=/Users/...path-to-file.../make-me-a-sandwich.sh
# where '...path-to-file...' is replaced with the relevant path to the file
# Then make a symbolic link in /usr/local/bin so that the sudo command
# finds the command make-me-a-sandwich, e.g. (again without '#' comment):
# ln -s /Users/...path-to-file.../make-me-a-sandwich.sh /usr/local/bin/make-me-a-sandwich
