#!/bin/bash

mkdir -p $HOME/.Rumi/data

cp Rumi.py $HOME/.Rumi/Rumi

cp -r $PWD/data/ $HOME/.Rumi

chmod +x $HOME/.Rumi/Rumi

echo 'export PATH=$PATH:$HOME/.Rumi' >> $HOME/.bashrc

if [ -e $HOME/.zshrc ]
	then
	echo 'export PATH=$PATH:$HOME/.Rumi' >> $HOME/.zshrc
fi

if [ -e $HOME/.config/fish/config.fish ]
	then
	echo 'set PATH $PATH $HOME/.Rumi' >> $HOME/.config/fish/config.fish
fi
