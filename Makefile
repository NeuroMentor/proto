generate:
	./bin/protoc -I . -I ./gen \
                     --go-grpc_out=./out \
                     --go_out=./out \
                     --go_opt=paths=source_relative \
                     ./gen/go/*/*/*.proto