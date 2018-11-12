
build:
	docker build -t gorestapi:latest .
run:
	docker run -d --rm --name gorestapi -p 8000:8000 gorestapi:latest
clean:
	docker stop gorestapi || true
	docker rm gorestapi || true
	docker rmi gorestapi:latest