#!/bin/bash

set -e

if [ -z $MYSQL_BASEDIR ] ; then
  read -p "Input MySQL Installed Directory: " INSTALL_PATH
else
  INSTALL_PATH=$MYSQL_BASEDIR
fi

set -x
cp -rf train $INSTALL_PATH/mysql-test/suite/
cp -rf train5 $INSTALL_PATH/mysql-test/suite/
cp -rf train6 $INSTALL_PATH/mysql-test/suite/
cp -rf train7 $INSTALL_PATH/mysql-test/suite/
set +x

echo -e "Install successfully!\n"
