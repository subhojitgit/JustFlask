PROJECT = just-flask

build:
	docker build -f Dockerfile.integ -t ${PROJECT} .

run: build
	docker run -it --rm \
	${PROJECT}:latest