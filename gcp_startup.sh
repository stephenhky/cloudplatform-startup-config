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
sudo apt-get install bzip2 -y
sudo apt-get install git -y

# installing pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
sudo python2 get-pip.py
sudo python3 get-pip.py
rm get-pip.py

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
mkdir install; cd install
wget 'http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh' -O miniconda.sh
chmod +x miniconda.sh
./miniconda.sh -b
export PATH=$HOME/miniconda2/bin:$PATH
echo "" >> $HOME/.bashrc
echo "# path to include Anaconda" >> $HOME/.bashrc
echo "export PATH=$HOME/miniconda2/bin:$PATH" >> $HOME/.bashrc
cd $HOME

# installing Jupyter
sudo python2 -m pip install jupyter
sudo python3 -m pip install jupyter
sudo python2 -m ipykernel install --user
sudo python3 -m ipykernel install --user
jupyter notebook --generate-config -y
sudo pip3 install jupyterlab
#~/.jupyter/jupyter_notebook_config.py
echo "" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c = get_config()" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 5100" >> $HOME/.jupyter/jupyter_notebook_config.py

# installing gcsfuse
sudo apt-get update
sudo apt-get install gcsfuse -y

