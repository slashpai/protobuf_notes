# Go with protobuf

## packages to be installed

protoc doesnt have go lang out

```bash
go get -u github.com/golang/protobuf/protoc-gen-go
go get -u github.com/golang/protobuf/proto
```

Inside src/simple

```proto
syntax = "proto3";

package example.simple;

message Person {
  string name = 1;
  int32 age = 2;
  Date birthday = 3;

  repeated string phone_number = 4;
}

message Date {
  int32 year = 1;
  int32 month = 2;
  int32 day = 3;
}

```

```bash
protoc -I src --go_out src src/simple/simple.proto
```
