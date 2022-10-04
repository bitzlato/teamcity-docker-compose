.PHONY: update
update:
	docker-compose up --detach --remove-orphans


.PHONY: start
start:
	docker-compose start

all: start
