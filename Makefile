.PHONY: update
update:
	docker-compose up --detach --remove-orphans


.PHONY: start
start:
	docker-compose start

clean:
	docker-compose down
	docker volume prune

all: start
