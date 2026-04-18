 source ./common.sh
 app_name=shipping

JAVA

 dnf install mysql -y

for file in schema app-user master-data; do

  echo Load $file
  mysql -h mysql-dev.azdevopsb82.online -uroot -pRoboShop@1 < /app/db/$file.sql &>>$log_file
  Status_Print $?

done
