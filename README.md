## Train Test Suite

### Overview

The Train Test Suite simulate many situation that MySQL DBA always encountered.
Each test case simulate one situation, the test case can't pass until DBA resolve
the situation.


### How to run test

First copy the train directory to MYSQL\_INSTALL\_DIR/mysql-test/suite/

```
cp -r train MYSQL_INSTALL_DIR/mysql-test/suite/
```


```
./mtr --suite=train [ TESTCASE ]
```

### Test Case Details

1. max\_connections

    This test case simulate the current connections exceed the "max_connections" parameter,
    So that DBA can not login database.

    User must find the way to login in the database, then execute set global max_connections=5.
