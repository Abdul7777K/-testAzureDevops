AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/Abdul7777K/-testAzureDevops.git
cd ./-testAzureDevops
rm -rf .git

cd ..

git clone https://h6ltdgm6dh4b6uqm4kgzdb6xmovkmar6wekw5zsw6wxpkbxiulna@dev.azure.com/Learning-Devops-7777/Abdul/_git/syncWithgitEshopCommerce

cp -r ./-testAzureDevops/* ./syncWithgitEshopCommerce/

cd ./syncWithgitEshopCommerce

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
