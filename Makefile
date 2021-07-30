.PHONY: protos

protos:
	protoc --proto_path=protobuf  -I protobuf --go_out=plugins=grpc:pb protobuf/*.proto --go_opt=module=github.com/rob-woerner/protos
