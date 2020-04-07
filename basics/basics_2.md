# Messages

## Multiple messages in same file

```proto
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

  // consider only three colors
  enum EyeColor {
    UNKNOWN_EYE_COLOR = 0;
    EYE_GREEN = 1;
    EYE_BLUE = 2;
    EYE_BLACK = 3;
  }

  EyeColor eyecolor = 8;

  // birthday
  Date birthday = 9;
}

message Date {
  int32 year = 1;
  int32 month = 2;
  int32 day = 3;
}
```
