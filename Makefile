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

generate_domain_mocks:
	mockery --dir=domain --output=domain/mocks --outpkg=mocks --all
# -----------

test_repository:
	go test -race -v -count=1 ./repository 

# -----------

curl_signup:
	curl -XPOST -H 'Content-Type: multipart/form-data' --form name=John --form email=john@test.com --form password=password123 localhost:8080/signup 

