.PHONY: chubble
MODULE="github.com/rob-woerner/protos"

chubble:
	protoc --proto_path=. --go_out=. --go_opt=module=${MODULE} --go-grpc_out=. --go-grpc_opt=module=${MODULE} ./*.proto

snusnu:
	protoc --include_imports --include_source_info --proto_path=protobuf --descriptor_set_out=unused.pb --go_out=./pb --go_opt=module=${MODULE} --go-grpc_out=./pb --go-grpc_opt=module=${MODULE} protobuf/*.proto


protos:
	protoc --proto_path=protobuf --descriptor_set_out=unused.pb --include_imports --include_source_info --go-grpc_out=pb --go-grpc_opt=paths=source_relative --go_opt=paths=source_relative  protobuf/*.proto
