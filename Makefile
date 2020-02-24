build:
	docker build . -t goestin/hackbox:latest

push:
	docker push goestin/hackbox
