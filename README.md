# docker-test-suites

Docker image for executing test cases based on pytest framework 

# Versions
| package 	    | version
| ------------- | ---------
| pytest 	    | 3.4.1
| pytest-cov    | 2.5.1
| plumbum   	| 1.6.6
| PyYAML    	| 3.12

## How to build image
```sh
$ make build
```

## How to get docker image
``` sh
$ docker pull ownport/test-suites:latest
```

## Supported commands

Perform all tests
```sh
$ docker run -ti --rm --name test-suites ownport/test-suites:latest test:all
```

Performa all tests with coverage report
```sh
$ docker run -ti --rm --name test-suites ownport/test-suites:latest test:all:with-coverage
```
