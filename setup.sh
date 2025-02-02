#!/bin/bash

# Created by: Mr Coxall
# Created on: Jun 2022
# Modified by: Lynnette Raffin
# Modified on: Feb 2025
# Created for: To automate the generation of SSH GitHub keys


# this script will setup your SSH key with GitHub
echo "This script will setup your SSH key with GitHub"
echo ""

echo "Please enter your full name (ex: Jane Smith): "
read  name
echo "Please enter your email address that you used to setup GitHub (ex: mr.coxall@mths.ca): "
read  email
echo "Please enter your GitHub user name (ex: mr-coxall): "
read  user

echo ""
echo "You will next be asked 3 questions."
echo "Just press ENTER each time."
echo ""

# setup SSH key
ssh-keygen -t ed25519 -C "$email"
ssh-add ~/.ssh/id_ed25519
echo ""
cat ~/.ssh/id_ed25519.pub

echo ""
echo "Please copy and paste the above key into your GitHub SSH Keys."
echo "(at: https://github.com/settings/keys)"
echo "Once done, press any key."
read  any_key

echo ""
echo "Next you will be asked if you want to continue"
echo "Type 'yes' ..."
echo "Once done, press any key."
read  any_key

ssh -T git@github.com
git config --global user.email "$email"
git config --global user.name "$name"
git config --global init.defaultBranch main

echo ""
echo "To finish the setup, a new Codespace window will open up."
echo "When it does, close this orginial one and use the new Codespace window."
echo "When ready, press any key."
read  any_key

# create an ICS3U directory in the root directory
mkdir ~/ICD2O
mkdir ~/ICD2O/Assign
mkdir ~/ICD2O/Assign/Assign-02
mkdir ~/ICD2O/Assign/Assign-03
mkdir ~/ICD2O/Assign/Assign-04
mkdir ~/ICD2O/Assign/Assign-05
mkdir ~/ICD2O/Assign/Assign-06
mkdir ~/ICD2O/Intro
mkdir ~/ICD2O/Intro/Intro-03
mkdir ~/ICD2O/Unit1
mkdir ~/ICD2O/Unit1/Unit1-01
mkdir ~/ICD2O/Unit1/Unit1-02
mkdir ~/ICD2O/Unit1/Unit1-03
mkdir ~/ICD2O/Unit1/Unit1-04
mkdir ~/ICD2O/Unit1/Unit1-05
mkdir ~/ICD2O/Unit1/Unit1-06
mkdir ~/ICD2O/Unit1/Unit1-07
mkdir ~/ICD2O/Unit2
mkdir ~/ICD2O/Unit2/Unit2-01
mkdir ~/ICD2O/Unit2/Unit2-02
mkdir ~/ICD2O/Unit2/Unit2-03
mkdir ~/ICD2O/Unit2/Unit2-04
mkdir ~/ICD2O/Unit2/Unit2-05
mkdir ~/ICD2O/Unit3
mkdir ~/ICD2O/Unit3/Unit3-01
mkdir ~/ICD2O/Unit3/Unit3-02
mkdir ~/ICD2O/Unit3/Unit3-03
mkdir ~/ICD2O/Unit3/Unit3-04
mkdir ~/ICD2O/Unit4
mkdir ~/ICD2O/Unit4/Unit4-01
mkdir ~/ICD2O/Unit4/Unit4-02
mkdir ~/ICD2O/Unit4/Unit4-03
mkdir ~/ICD2O/Unit4/Unit4-04
mkdir ~/ICD2O/Unit5
mkdir ~/ICD2O/Unit5/Unit5-01
mkdir ~/ICD2O/Unit5/Unit5-02
mkdir ~/ICD2O/Unit5/Unit5-03

# copy over the .vscode directory into it
cp -r .vscode ~/ICD2O/.vscode

# update the .bashrc to add in aliases for ll, ..
cp .bashrc ~/.bashrc

# change into the ICD2O directory and then open Codespaces in there
cd ~/ICD2O
code .
