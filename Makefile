.PHONY: run
run:
	poetry run python3 study_django_rest/manage.py runserver

.PHONY: migrate
migrate:
	poetry run python3 study_django_rest/manage.py migrate

.PHONY: makemigrations
makemigrations:
	poetry run python3 study_django_rest/manage.py makemigrations polls

.PHONY: check
check:
	poetry run python3 study_django_rest/manage.py check

.PHONY: shell
shell:
	poetry run python3 study_django_rest/manage.py shell

.PHONY: test
test:
	poetry run python3 study_django_rest/manage.py test polls

.PHONY: createsuperuser
createsuperuser:
	poetry run python3 study_django_rest/manage.py createsuperuser

.PHONY: psql
psql:
	docker compose exec -it database psql -U postgres study_django_rest	

.PHONY: db-up
db-up:
	docker compose up -d

.PHONY: db-down
db-down:
	docker compose down

