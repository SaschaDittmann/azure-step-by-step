#!/bin/bash

cd $HOME/clouddrive

export adls1name="<adls1-account-name>"

az dls fs upload -n $adls1name --source-path "$HOME/clouddrive/data/contosoretaildw-tables" --destination-path /contosoretaildw --overwrite
