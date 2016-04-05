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

Before you run test, you should export MYSQL\_BASEDIR ENV variable like below:

```
export MYSQL_BASE_DIR=[MySQL Installed Directory]
```

1. Install test cases

```
./install.sh
```


2. Run test cases

```
./run.sh
```

