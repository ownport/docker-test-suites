
build-image:
	@ docker build -t ownport/test-suites:latest .

run-container:
	@ docker run -ti --rm --name test-suites ownport/test-suites:latest /bin/sh



