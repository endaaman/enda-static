build: Dockerfile
	docker build . -t endaaman/static.endaaman.me

push: Dockerfile
	docker push endaaman/static.endaaman.me
