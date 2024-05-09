default: run

run:
	npm run dev

docker-build:
	docker build -t hello-express:latest .