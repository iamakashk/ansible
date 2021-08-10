#!/bin/bash
mysql -uroot << EOF
create user 'mysqluser'@'%' identified by 'mysqlpass';
GRANT ALL ON *.* TO 'mysqluser'@'%' IDENTIFIED BY 'mysqlpass';
GRANT ALL PRIVILEGES ON * . * TO 'mysqluser'@'%';
grant replication slave on *.* to 'mysqluser'@'%';
FLUSH PRIVILEGES;
EOF