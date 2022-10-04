.PHONY: migrate-db
migrate-db:
	docker-compose stop
	docker-compose run --rm --entrypoint "rake db:migrate" puma
	docker-compose start

.PHONY: update
update:
	docker-compose up --detach --remove-orphans

.PHONY: setup
setup:
	setsebool -P container_manage_cgroup true
	docker-compose create

.PHONY: start
start:
	docker-compose start 

all: start
