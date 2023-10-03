up:
	docker-compose up -d 

down:
	docker-compose down 

# --------------------------

init-project:
	go mod init clean-arch-demo 

run:
	go run -race -v ./cmd

