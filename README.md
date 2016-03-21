## Train Test Suite

### Overview

The Train Test Suite simulate many situation that MySQL DBA always encountered.
Each test case simulate one situation, the test case can't pass until DBA resolve
the situation.

There are four directories: train, train5, train, train7.

train directory contains test cases which behavior the same for all MySQL version.

train5 directory contains test cases which only happens on MySQL5.5 .

train6 directory contains test cases which only happens on MySQL5.6 .

train7 directory contains test cases which only happens on MySQL5.7 .


### How to run test

First copy the train/train5/train6/train7 directory to MYSQL\_INSTALL\_DIR/mysql-test/suite/

```
cp -r trainX MYSQL_INSTALL_DIR/mysql-test/suite/
```


```
./mtr --suite=trainX [ TESTCASE ]
```

### Test Case Details

1. max\_connections

    This test case simulate the current connections exceed the "max_connections" parameter,
    So that DBA can not login database.

    User must find the way to login in the database, then execute set global max_connections=5.
