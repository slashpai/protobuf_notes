# Compiling protobuf

protoc

Install protoc - brew install protobuf

protocol buffer as c compiler


## protoc is way to generate code

### compile a single proto file

```bash
protoc -I=<proto root folder> --python_out=<folder in which python code should be generated> <proto/filetocompile.proto>
```

### to compile all file

```bash
protoc -I=<proto root folder> --python_out=<folder in which python code should be generated> <proto/*.proto>
```

### example with ruby

```bash
protoc -I proto --ruby_out ruby proto/*
```
