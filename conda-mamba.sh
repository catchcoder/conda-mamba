# Install Conda and Mamba

sudo apt update
sudo apt install  curl
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

# SHould logout to initialise updated .bashrc

~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda update -n base -c defaults conda -y
~/miniconda3/bin/conda install -n base -c conda-forge mamba -y

# Create ENV with R

~/miniconda3/bin/mamba env create -f config.yml

## manual mamba create -n rdemo -c conda-forge -c bioconda -c R r-base r-tidyverse

# List ENV's

mamba env list

# Switch to ENV

conda activate rdemo

# Create a requirements.txt

conda list -e >requirments.txt

#create freeze env yaml file 

conda env export > rdemo.yml

# Remove ENV

mamba env remove -n rdemo

# Update conda
conda update --all

# update Mamba
mamba update --all

