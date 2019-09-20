#!/bin/bash

cd $HOME/clouddrive

export adls2name="<storage-account-name>"

./azcopy login
./azcopy cp "$HOME/clouddrive/data/contosoretaildw-tables/*" "https://$adls2name.dfs.core.windows.net/contosoretaildw" --recursive=true --overwrite
