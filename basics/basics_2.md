# Messages

## Multiple messages in same file

powerful, easy to reference if we need to

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

## Nesting messages

types within types

reasons could be: avoiding naming conflicts, enforcing some level of locality for that type

You can nest as deeply as you want

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

  // type Address within person
  message Address {
    string address_line1 = 1;
    string address_line2 = 2;
    string zip_code = 3;
    string city = 4;
    string country = 5;
  }

  // multiple addresses
  repeated Address addresses = 10;
}
```

## Importing types

* You can also have different types in different proto files

* This is useful if you want to reuse code and import other .proto files created by people in your team

* Need to specify absolute path from root folder

//person.proto

```proto
syntax = "proto3";

import "date.proto";

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

  // type Address within person
  message Address {
    string address_line1 = 1;
    string address_line2 = 2;
    string zip_code = 3;
    string city = 4;
    string country = 5;
  }

  // multiple addresses
  repeated Address addresses = 10;
}
```

//date.proto file

```proto
syntax = "proto3";

message Date {
  int32 year = 1;
  int32 month = 2;
  int32 day = 3;
}
```

## Packages

* It is very important to define the packages in which your protocol buffers live

* When you code gets compiled it will be placed at the package you indicated

* It also helps to prevent name conflicts between messages

* Packages will help all the different languages compile correcly from .proto files

* precise naming convention

* Have to use alongside imports

// date package

```proto
/*Date (example: 2018/03/15). With fields:
Year (number)
Month (number)
Day (number)*/

syntax = "proto3";

package my_date;

message Date {
  int32 year = 1;
  int32 month = 2;
  int32 day = 3;
}
```

//person with package import

```proto
syntax = "proto3";

import "date_with_package.proto";

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
  my_date.Date birthday = 9;

  // type Address within person
  message Address {
    string address_line1 = 1;
    string address_line2 = 2;
    string zip_code = 3;
    string city = 4;
    string country = 5;
  }

  // multiple addresses
  repeated Address addresses = 10;
}

```
