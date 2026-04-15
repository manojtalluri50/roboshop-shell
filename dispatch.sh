cp dispatch.service /etc/systemd/system/dispatch.service
Status_Print $?

dnf install golang -y
Status_Print $?

useradd roboshop
Status_Print $?

mkdir /app
Status_Print $?

curl -L -o /tmp/dispatch.zip https://roboshop-artifacts.s3.amazonaws.com/dispatch-v3.zip
Status_Print $?

cd /app

unzip /tmp/dispatch.zip
Status_Print $?

cd /app

go mod init dispatch
Status_Print $?

go get
Status_Print $?

go build
Status_Print $?

systemctl daemon-reload
systemctl enable dispatch
systemctl start dispatch

Status_Print $?