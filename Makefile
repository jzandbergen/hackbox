build:
	podman build . -t docker.io/goestin/hackbox:latest

push:
	podman push docker.io/goestin/hackbox

