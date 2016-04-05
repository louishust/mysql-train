#!/bin/bash


display_usage() {
  echo -e "Usage:\n$0 [MYSQL_BASE_DIR] \n"
}

set -e

if [ $# -ne 1 ]
then
  display_usage
  exit 1
fi

set -x
cp -rf train $1/mysql-test/suite/
cp -rf train5 $1/mysql-test/suite/
cp -rf train6 $1/mysql-test/suite/
cp -rf train7 $1/mysql-test/suite/
set +x

echo -e "Install successfully!\n"
