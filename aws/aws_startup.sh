#!/usr/bin/env bash

# system updates
sudo yum update -y
sudo yum install gcc -y
sudo yum install gcc-gfortran -y
sudo yum install python3 -y
sudo yum install jq -y
sudo yum install python-devel -y
sudo yum install python3-devel -y
sudo yum install git -y
sudo yum install cmake -y

# installing python packages
sudo pip3 install -U numpy
sudo pip3 install -U Cython
sudo pip3 install -U shorttext
sudo pip3 install -U spacy
sudo python3 -m spacy download en
sudo pip3 install -U matplotlib
sudo pip3 install -U tensornetwork
sudo pip3 install -U pyqentangle
sudo pip3 install -U wget
sudo pip3 install -U graphflow
sudo pip3 install -U nltk
sudo pip3 install -U pysqlite3
sudo pip3 install -U awscli
sudo pip3 install -U gsutil
sudo pip3 install -U crcmod
sudo pip3 install -U dask
sudo pip3 install -U dask-ml
sudo pip3 install -U dask[dataframe]
sudo pip3 install -U umap
sudo pip3 install -U umap-learn
sudo pip3 install -U torch torchvision    # need larger memory to install
sudo pip3 install -U transformers
sudo pip3 install -U ml-experiment
sudo pip3 install -U flask

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
sudo python3 -m pip install jupyter
sudo python3 -m ipykernel install --user
jupyter notebook --generate-config -y
sudo pip3 install jupyterlab
#~/.jupyter/jupyter_notebook_config.py
echo "" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c = get_config()" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '0.0.0.0'" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> $HOME/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 5100" >> $HOME/.jupyter/jupyter_notebook_config.py

