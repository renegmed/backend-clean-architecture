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

curl_login:
	curl -XPOST localhost:8080/login -d 'email=john@test.com' -d 'password=password123'  # -d '{"email": "john@test.com", "password": "password123"}'

TOKEN := eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJuYW1lIjoiSm9obiIsImlkIjoiNjVjMjhmMWZhZTEyNjIwN2JlNTIxNDJjIiwiZXhwIjoxNzA3MzY0OTg4fQ.-RFeCKfySSL9M9RVmIpYDEj8kgrj6btVhKu1-ju5uD0","refreshToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1YzI4ZjFmYWUxMjYyMDdiZTUyMTQyYyIsImV4cCI6MTcwNzk2MjU4OH0.zpBl1r9IqlpkQ5JRaSpYMA_JQuuAnAovhNGdVg3LQtU
