all: push

image:
	docker build -t grafana .
	docker tag grafana mosquito/grafana

push: image
	docker push mosquito/grafana:latest
