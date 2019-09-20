#!/bin/bash

cd $HOME/clouddrive

export adls1name="<adls1-account-name>"

#login to azure using your credentials
az account show 1> /dev/null

if [ $? != 0 ];
then
	az login
fi

# Upload to ADLS Gen1
az dls fs upload -n $adls1name --source-path "$HOME/clouddrive/data/contosoretaildw-tables" --destination-path /contosoretaildw --overwrite
