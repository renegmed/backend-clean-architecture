up:
	docker-compose up -d 

down:
	docker-compose down 

# --------------------------

init-project:
	go mod init clean-arch-demo 

run:
	go run -race -v ./cmd

generate_mongo_mocks:
	mockery --dir=mongo --output=mongo/mocks --outpkg=mocks --all

# -----------

test_repository:
	go test -race -v -count=1 ./repository 