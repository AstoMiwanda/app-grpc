protoc:
	protoc --proto_path=protos --plugin=protoc-gen-dart=C:\Users\astom\AppData\Local\Pub\Cache\bin\protoc-gen-dart.bat --dart_out=grpc:lib/src/generated protos/album.proto