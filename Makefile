
build-base-image:
	@ docker build -t ownport/test-suites:latest -f base/Dockerfile base/

push-base-image:
	@ docker push ownport/test-suites:latest

build-data-formats-image:
	@ docker build -t ownport/test-suites-data-formats:latest -f data-formats/Dockerfile data-formats

push-data-formats-image:
	@ docker push ownport/test-suites-data-formats:latest




