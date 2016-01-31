#! /usr/bin/bash

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install julius
brew update
brew install julius


# install virtualenv
pip install virtualenvwrapper

if ! grep -q "virtualenvwrapper" ~/.bashrc; then
cat >> ~/.bashrc <<- EOF
WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
EOF
fi

source ~/.bashrc

mkvirtualenv julius-cy
pip install -r requirements.txt


mkdir -p /usr/local/share/julius/acoustic/cy
cd /usr/local/share/julius/acoustic/cy
wget --progress=dot:mega -O - http://techiaith.cymru/htk/paldaruo-2016-01-07.tar.gz | tar -zxf -
cd -

mkdir -p /usr/local/share/julius/lexicon/cy
cd /usr/local/share/julius/lexicon/cy
wget --progress=dot:mega -O lexicon.tgz - http://techiaith.cymru/htk/lexicon-2016-01-07.tar.gz
cd -

# Homebrew doesn't install mkdfa.pl. Install manually
cp osx/mkdfa.pl /usr/local/bin/
# Homebrew install julius et al. with .dSYM extension. generator requires no .dSYM extensions. Make soft links
cd /usr/local/bin/
ln -s generate.dSYM generate
ln -s dfa_minimize.dSYM dfa_minimize
ln -s mkfa.dSYM mkfa

