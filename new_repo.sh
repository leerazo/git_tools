#!/bin/sh

echo "Creating directory $1"
mkdir $1

echo "Initializing $1 as Git repository"
git init -b main $1

#echo "Adding all files and making initial commit"
#git add $1/. && git commit -m "initial commit"

echo "Creating repository on Github"
gh repo create --private --source $1
