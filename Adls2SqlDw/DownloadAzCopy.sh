#!/bin/bash

cd $HOME/clouddrive

wget -O azcopy-v10.tar https://aka.ms/downloadazcopy-v10-linux
tar -zxvf azcopy-v10.tar
mv azcopy_linux_amd64_10.2.1/* .
rm -rf azcopy_linux_amd64_10.2.1/
rm azcopy-v10.tar
