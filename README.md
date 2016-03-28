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

### Test Cases in train

1. ./mtr --suite=train max\_connections
2. ./mtr --suite=train max\_allowed\_packet
3. ./mtr --suite=train sql\_slave\_skip\_counter
4. ./mtr --max-connections=5000 --suite=train kill\_slow\_query


### Test Cases in train5

### Test Cases in train6

### Test Cases in train7
