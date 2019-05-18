#!/usr/bin/env bash

# system updates
sudo apt-get update
sudo apt install gcc -y
sudo apt install gfortran -y
sudo apt-get install libc6 -y
sudo apt-get install python3 -y
sudo apt-get install jq -y
sudo apt-get install python-dev -y
sudo apt-get install libffi-dev -y
sudo apt-get install python3-dev -y

# installing pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python2 get-pip.py
sudo python3 get-pip.py

# installing python packages
sudo pip3 install -U numpy
sudo pip3 install -U Cython
sudo pip3 install -U shorttext
sudo python3 -m spacy download en
sudo pip3 install -U pyqentangle
sudo pip3 install -U wget
sudo pip3 install -U tfnumpy
sudo pip3 install -U graphflow
sudo pip3 install -U nltk

# installing Anaconda

