#!/bin/bash
mkdir -p $HOME/src

cd $HOME/src
sudo apt-get install -y cvs build-essential alsa-tools alsa-oss zlib1g-dev flex libc-bin libc-dev-bin python-pexpect libasound2 libasound2-dev libesd0-dev libsndfile1-dev
git clone https://github.com/julius-speech/julius.git
cd -

cd $HOME/src/julius
if grep -q BCM /proc/cpuinfo; then
	echo "Raspberry Pi"
	export CFLAGS="-O2 -mcpu=arm1176jzf-s -mfpu=vfp -mfloat-abi=hard -pipe -fomit-frame-pointer"
fi
./configure 
make
sudo make install
cd -

sudo mkdir -p /usr/share/julius/acoustic/cy
cd /usr/share/julius/acoustic/cy
wget --progress=dot:mega -O - http://techiaith.cymru/htk/paldaruo-16kHz-2017-12-08.tar.gz | sudo tar -zxf -
cd -

sudo mkdir -p /usr/share/julius/lexicon/cy
cd /usr/share/julius/lexicon/cy
sudo wget --progress=dot:mega -O lexicon.tgz - http://techiaith.cymru/htk/lexicon-2017-12-08.tar.gz 
cd -

sudo mkdir -p /usr/share/julius/languagemodels/cy
cd /usr/share/julius/languagemodels/cy
wget --progress=dot:mega -O - http://techiaith.cymru/irstlm/CofnodYCynulliad.cy.julius.lm.tar.gz | sudo tar -zxf -
cd -

