# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: user.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("user.proto", :syntax => :proto3) do
    add_message "User" do
      optional :id, :int32, 1
      optional :name, :string, 2
      optional :email, :string, 3
    end
  end
end

User = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("User").msgclass
