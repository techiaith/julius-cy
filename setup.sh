#!/bin/bash
mkdir -p $HOME/src

cd $HOME/src
sudo apt-get install -y cvs build-essential alsa-tools alsa-oss zlib1g-dev flex libc-bin libc-dev-bin python-pexpect libasound2 libasound2-dev libesd0-dev libsndfile1-dev
cvs -z3 -d:pserver:anonymous@cvs.sourceforge.jp:/cvsroot/julius co julius4
cd -

cd $HOME/src/julius4
./configure
sudo make
sudo make install
cd -

sudo mkdir -p /usr/share/julius/acoustic/cy
cd /usr/share/julius/acoustic/cy
wget --progress=dot:mega -O - http://techiaith.cymru/htk/paldaruo-2016-03-15.tar.gz | sudo tar -zxf -
cd -

sudo mkdir -p /usr/share/julius/lexicon/cy
cd /usr/share/julius/lexicon/cy
sudo wget --progress=dot:mega -O lexicon.tgz - http://techiaith.cymru/htk/lexicon-2016-01-07.tar.gz 
cd -

sudo mkdir -p /usr/share/julius/languagemodels/cy
cd /usr/share/julius/languagemodels/cy
wget --progress=dot:mega -O - http://techiaith.cymru/irstlm/CofnodYCynulliad.cy.julius.lm.tar.gz | sudo tar -zxf -
cd -

