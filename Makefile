.PHONY: protos

protos:
	protoc --proto_path=protobuf protobuf/*.proto -I protobuf --go_opt=module=github.com/rob-woerner/protos --go_out=plugins=grpc:pb
