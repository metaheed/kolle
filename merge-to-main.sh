#/bin/bash


echo "##############check out development ######################"

git checkout development
git commit -m $1 -a
git merge main
git push


echo "################# Check out main branch #######################"
git checkout main
git pull
git merge development
git push


echo "################work on development branch ####################"
git checkout development

