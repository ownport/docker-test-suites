
build-image:
	@ docker build -t ownport/test-suites:latest .

run-test-all:
	@ docker run -ti --rm --name test-suites ownport/test-suites:latest test:all

run-test-all-with-coverage:
	@ docker run -ti --rm --name test-suites ownport/test-suites:latest test:all:with-coverage




