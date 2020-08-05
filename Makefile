VERSION = 1.0.9

.PHONY: build release

build:
	docker-compose build device-mgmt
	docker push bibbylong/device-mgmt:$(VERSION)-amd64
release:
	python3 setup.py sdist
	python3 -m twine upload dist/cloud-toolkit-$(VERSION).tar.gz