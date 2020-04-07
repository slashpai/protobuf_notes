# Scalars

## Scalar type numbers

type: int32, int64, double, float, uint32, sint32 etc


## Scalar Boolean

type: bool
True/False

## Scalar text

type: string
either utf-8/7 bit ASCCI text


## Bytes

any sequence of bit say image

type: bytes

### Example proto file

```proto
syntax = "proto3";

message Person {
  int32 age = 1;
  string firstname = 2;
  string lastname = 3;
  bytes picture = 4;
  bool verified = 5;
  float height = 6;
}
```
