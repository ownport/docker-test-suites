# docker-test-suites

Docker images for executing test cases based on pytest framework 

## Base image

### Versions
| package 	    | version
| ------------- | ---------
| pytest 	    | 3.4.1
| pytest-cov    | 2.5.1
| plumbum   	| 1.6.6
| PyYAML    	| 3.12


### How to build image
```sh
$ make build-base-image
```

### How to get docker image
``` sh
$ docker pull ownport/test-suites:latest
```


## Data formats image

### Versions
| package 	            | version
| --------------------- | ---------
| cython                | 0.28
| python-snappy         | 0.5.2
| avro-python3          | 1.8.2
| fastavro              | 1.17.9
| cffi                  | 1.11.4
| protobuf              | 3.5.1

### How to build image
```sh
$ make build-data-formats-image
```

### How to build image

```sh
$ make build-data-formats-image
```

### How to get docker image
``` sh
$ docker pull ownport/test-suites-data-formats:latest
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
