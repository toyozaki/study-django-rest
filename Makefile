.PHONY: run
run:
	poetry run python3 study_django_rest/manage.py runserver

.PHONY: db-up
db-up:
	docker compose up -d

.PHONY: db-down
db-down:
	docker compose down