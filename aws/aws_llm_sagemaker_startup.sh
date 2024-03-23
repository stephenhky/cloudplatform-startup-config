#!/usr/bin/env bash

# conda
conda create -n llm python==3.9.10 numpy scipy pip

# clone that repository
git clone https://github.com/stephenhky/GeneralLLMChatbot
cd GeneralLLMChatbot
pip install -r requirements.txt
conda install -c anaconda ipykernel
ipython kernel install --user --name=llm
cd ..

