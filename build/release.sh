#/bin/bash

#git tag v0.0.1 HEAD
#git push origin --tags

#git checkout -b dev
#git push --set-upstream origin dev

release_version="v0.0.32"

#release_version="v$(date +'%Y.%m.%d.%H%M%S')"

echo "##############check out development ######################"

git checkout development
git commit -m "Update from main" -a
git merge main
git push


echo "################# Check out main branch #######################"
git checkout main
git pull
git merge development
git push


git tag $release_version HEAD
git push origin --tags

echo "################work on development branch ####################"
git checkout development

echo "###############creating new branch #############################"
##### creating new branch from main
#git checkout main
#git checkout -b dev_$new_version
#git push --set-upstream origin dev_$new_version
