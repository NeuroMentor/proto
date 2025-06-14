generate:
	PROTOC_GEN_GO=$(shell which protoc-gen-go)
	PROTOC_GEN_GO_GRPC=$(shell which protoc-gen-go-grpc)
	./bin/protoc -I . -I ./gen \
		--go_out=out --go-grpc_out=out \
		--go_opt=paths=source_relative \
		--go-grpc_opt=paths=source_relative \
		gen/go/v1/telegram_gateway_service/webhook.proto
