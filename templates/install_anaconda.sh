#!/bin/bash
HOME=/home/<%= @user %>

# download anaconda
cd /tmp
rm -rf <%= @anaconda_file %>
wget <%= @anaconda_url %>
chmod 755 <%= @anaconda_file %>

# install anaconda
./<%= @anaconda_file %> -b -p $HOME/anaconda

# activate anaconda environment
source $HOME/anaconda/bin/activate

# update anaconda
conda update -n base conda -y

# cleanup
rm -rf <%= @anaconda_file %>
