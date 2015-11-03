add.pb.go : add.proto
	protoc --go_out=plugins=grpc:. add.proto

lib/add.rb : add.proto
	protoc --ruby_out=lib --grpc_out=lib --plugin=protoc-gen-grpc=`which grpc_ruby_plugin` add.proto

lib/add_services.rb : add.proto
	protoc --ruby_out=lib --grpc_out=lib --plugin=protoc-gen-grpc=`which grpc_ruby_plugin` add.proto

all: add.pb.go lib/add.rb lib/add_services.rb

clean:
	rm add.pb.go lib/add.rb lib/add_services.rb
