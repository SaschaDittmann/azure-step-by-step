#!/bin/bash

cd $HOME/clouddrive
mkdir $HOME/clouddrive/data

./azcopy cp "https://contosoretaildw.blob.core.windows.net/contosoretaildw-tables" $HOME/clouddrive/data/ --recursive=true --overwrite
