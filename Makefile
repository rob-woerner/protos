.PHONY: protos

protos:
	protoc --proto_path=protobuf --go_out=plugins=grpc:pb --go_opt=module=github.com/rob-woerner/protos protobuf/*.proto
