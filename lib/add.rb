# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: add.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "main.NumericRequest" do
    optional :v1, :int32, 1
    optional :v2, :int32, 2
  end
  add_message "main.NumericResponse" do
    optional :r, :int32, 1
  end
end

module Main
  NumericRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("main.NumericRequest").msgclass
  NumericResponse = Google::Protobuf::DescriptorPool.generated_pool.lookup("main.NumericResponse").msgclass
end
