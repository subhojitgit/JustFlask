PROJECT = just-flask

build:
	docker build -f Dockerfile.integ -t ${PROJECT} .

run: build
	docker run -i --rm \
	${PROJECT}:latest