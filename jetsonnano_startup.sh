# install Archiconda
# ....

# software installation
sudo apt-get update
sudo apt-get install nano -y
sudo apt-get install git -y
sudo apt-get install gcc -y
sudo apt-get install cmake -y
sudo apt-get install libatlas-base-dev gfortran -y
sudo apt-get install libhdf5-serial-dev hdf5-tools -y
sudo apt-get install python3-dev -y
sudo apt install nodejs npm -y
sudo apt install python3-pip -y
sudo apt-get install libopenblas-base -y
sudo apt-get install libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
sudo apt install libfreetype6-dev -y
sudo add-apt-repository ppa:graphics-drivers/ppa 

dpkg --add-architecture amd64
# Follow instructions on https://developer.nvidia.com/cuda-downloads. 
# Select Linux, x86_64, Ubuntu, 16.04, deb (local).

# Python packages
pip install -U pip
sudo apt install python3-scipy -y
python3 -m pip install ipykernel
python3 -m ipykernal install --user
sudo pip3 install -U jupyter jupyterlab

# install Jupyter
pip install -U jupyter jupyterlab
pip install -U ipykernel
python -m ipykernel install --user

# create virtual environment
conda update conda
conda create -n pyj python=3.7 -y
conda activate pyj
pip install -U numpy
#sudo apt install python3-scipy -y
conda install scipy -y
conda install scikit-learn -y
pip install -U gensim
conda install pandas -y
conda install Cython -y

# install tensorflow
# reference: https://maduinos.blogspot.com/2019/08/jetson-nano-tutorialtensorflow-keras.html
# reference: https://docs.nvidia.com/deeplearning/frameworks/install-tf-jetson-platform/index.html  (better)
# sudo pip3 install --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v42 tensorflow-gpu==1.13.1+nv19.4 --user
sudo pip3 install -U numpy==1.16.1 scipy==1.4.1 future==0.17.1 mock==3.0.5 h5py==2.9.0 keras_preprocessing>=1.1.0 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11 termcolor>=1.1.0 tensorboard google-pasta>=0.1.6 opt-einsum>=2.3.2
sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow

# install pytorch
wget https://files.pythonhosted.org/packages/1a/3b/fa92ece1e58a6a48ec598bab327f39d69808133e5b2fb33002ca754e381e/torch-1.4.0-cp37-cp37m-manylinux1_x86_64.whl -O torch-1.4.0-cp37-cp37m-manylinux1_x86_64.whl
pip install torch-1.4.0-cp36-cp36m-linux_aarch64.whl

# turn off power-safe mode for wifi: sudo iw dev wlan0 set power_save off
# turn on power-safe mode for wifi: sudo iw dev wlan0 get power_save
