AZUREPAT=$AZUREPAT
AZUSERNAME=$AZUSERNAME
AZUSER_EMAIL=$AZUSER_EMAIL
AZORG=$AZORG
git clone https://github.com/Abdul7777K/-testAzureDevops.git
cd ./-testAzureDevops
rm -rf .git

cd ..

MY_PAT=d7ecvmh7zv6vauw4tpnbputlza4o6iitg3yptwqlmua3bkvbnyha # replace "yourPAT" with your PAT string
B64_PAT=$(printf "%s"":$MY_PAT" | base64)
GIT_CMD_REPOSITORY="https://Learning-Devops-7777@dev.azure.com/Learning-Devops-7777/Abdul/_git/syncWithgitEshopCommerce"
git -c http.extraHeader="Authorization: Basic ${B64_PAT}" clone $GIT_CMD_REPOSITORY

cp -r ./-testAzureDevops/* ./syncWithgitEshopCommerce/

cd ./syncWithgitEshopCommerce

git config --global user.email "$AZUSER_EMAIL"
git config --global user.name "$AZUSERNAME"

git add .
git commit -m "sync from git to azure"

git push
