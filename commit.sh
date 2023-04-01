AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/Abdul7777K/-testAzureDevops.git
cd ./-testAzureDevops
rm -rf .git

cd ..

GIT_CMD_REPOSITORY="https://anything:63swx2wzbhgxlskg75gcftaip6d5bex7bue2slugvsauptyaa32a@dev.azure.com/Learning-Devops-7777/Abdul/_git/syncWithgitEshopCommerce""
git clone $GIT_CMD_REPOSITORY

cp -r ./-testAzureDevops/* ./syncWithgitEshopCommerce/

cd ./syncWithgitEshopCommerce

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
