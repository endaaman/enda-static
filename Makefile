build:
	docker build . -t endaaman/static.endaaman.me

push:
	docker push endaaman/static.endaaman.me

start: build
	docker-compose up -d --build

stop:
	docker-compose stop
