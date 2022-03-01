#!/bin/sh
cat <<-EOF > /root/cloudreve/mycloudreve.ini
[System]
; 运行模式
Mode = master
; 监听端口
Listen = :${PORT}
; 是否开启 Debug
Debug = false
SessionSecret = ${SESSION_SECRET}
HashIDSalt = ${HASH_ID_SALT}
[Database]
; 数据库类型，目前支持 sqlite/mysql/mssql/postgres
Type = ${DATABASE_TYPE}
; MySQL 端口
Port = ${DATABASE_PORT}
; 用户名
User = ${DATABASE_USER}
; 密码
Password = ${DATABASE_PASSWD}
; 数据库地址
Host = ${DATABASE_HOST}
; 数据库名称
Name = ${DATABASE_NAME}
; 数据表前缀
TablePrefix = cd_
EOF
/root/cloudreve/cloudreve -c /root/cloudreve/mycloudreve.ini
#/root/cloudreve/cloudreve
