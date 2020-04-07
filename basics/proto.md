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

## Tags

In protocol bufffers, field names are not important but when programming fields are important. For protobuf the important element is tag

smallest tag 1
largest tag 2 ^ 29 - 1
You cannot use 19000 -> 19999, reserved by google for special use

Tag numbers 1 -  15 use one byte in space, so use them for frequently populated fields
Tag numbers 16- 2047 use 2 bytes

Important to know when large number of fields the minimize space of each message
concept of reserved tags


## Repeated fields

To make a list or an array you can use the concept of repeated fields

repeated <type> <name> = fieldnumber
  
Opposite of repeated is singular (we dont write it). 0 or more

```proto
syntax = "proto3";

message Person {
  int32 age = 1;
  string firstname = 2;
  string lastname = 3;
  bytes picture = 4;
  bool verified = 5;
  float height = 6;
  
  repeated string phone_number = 7;
}
```

## Comments

// or /*

```proto
// proto file
syntax = "proto3";

/* message to identify person
 * across system */
message Person {
  // age
  int32 age = 1;
  string firstname = 2;
  string lastname = 3; // last name
  // jpg format
  bytes picture = 4;
  bool verified = 5;
  float height = 6; // in cms

  repeated string phone_number = 7; // list of phone numbers optional
}
```

## Default values for fields

every field has default value (proto 3)
bool false
number 0
string empty string
bytes empty bytes
enum first value
repeated empty list

No concept of required/optional fields in proto 3

