#!/bin/bash
set -e

if [ -z $MYSQL_BASEDIR ] ; then
  read -p "Input MySQL Installed Directory: " INSTALL_PATH
else
  INSTALL_PATH=$MYSQL_BASEDIR
fi


cd $INSTALL_PATH/mysql-test/

while [ 1 ] ; do
  echo -e "\e[1m"
  echo -e "List of test cases:"
  echo -e "\e[0m\e[36m"
  echo -e "[1]. max_connections"
  echo -e "[2]. max_allowed_packet"
  echo -e "[3]. sql_slave_skip_counter"
  echo -e "[4]. kill_slow_query"
  echo -e "[5]. insert_out_range"
  echo -e "[6]. innodb_row_lock"
  echo -e "[7]. flush_table_block"
  echo -e "[8]. config_replication"

  echo -e "\e[1m"
  read -p "Please choose one test case or Quit(q): " choice
  echo -e "\e[0m"
  case $choice in
    1) ./mtr --suite=train max_connections;;
    2) ./mtr --suite=train max_allowed_packet;;
    3) ./mtr --suite=train sql_slave_skip_counter;;
    4) ./mtr --max-connections=5000 --suite=train kill_slow_query;;
    5) ./mtr --suite=train insert_out_range;;
    6) ./mtr --max-connections=5000 --suite=train innodb_row_lock;;
    7) ./mtr --suite=train flush_table_block;;
    8) ./mtr --suite=train config_replication;;
    q) exit 0;;
    *) echo -e "Wrong number!!! Please choose again!\n";;
  esac
done
