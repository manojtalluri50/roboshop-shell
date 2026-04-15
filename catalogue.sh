source ./common.sh
app_name=catalogue

echo Copy Mongodb Repo File
cp mongo.repo /etc/yum.repos.d/mongo.repo
Status_Print $?

NODEJS

echo Install Mongo Client
dnf install mongodb-mongosh -y
Status_Print $?

echo Load Master Data
mongosh --host mongodb-dev.azdevopsb82.online </app/db/master-data.js
Status_Print $?