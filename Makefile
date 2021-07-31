.PHONY: protos

protos:
	protoc -I protobuf  --go_out=module=github.com/rob-woerner/protos:pb  --go_opt=module=github.com/rob-woerner/protos protobuf/*.proto
