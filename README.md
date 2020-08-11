# Protobuf Notes

## Why Protobuf?

### CSV
* easy to parse, read, makes sense of
* data types need to be inferred and not gurantee, tricky when data contains comma, column names can be missing

```csv
Year,Make,Model,Description,Price
1997,Ford,E350,"ac, abs, moon",3000.00
1999,Chevy,"Venture ""Extended Edition""","",4900.00
1999,Chevy,"Venture ""Extended Edition, Very Large""",,5000.00
1996,Jeep,Grand Cherokee,"MUST SELL!
air, moon roof, loaded",4799.00
```

### RDMS

* Fully typed, fits in table
* Flat data, stored in db and data defintion will be different for each database
* Difficult to share

### XML

* XML stands for eXtensible Markup Language.
* XML was designed to store and transport data.
* XML was designed to be both human- and machine-readable.

* difficult to parse
* redundancy in syntax of XML causes higher storage and transportation cost when the volume of data is large

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bookstore>
  <book category="cooking">
    <title lang="en">Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>30.00</price>
  </book>
  <book category="children">
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
  <book category="web">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>
</bookstore>
```

### JSON

* JSON: JavaScript Object Notation.
* JSON is a syntax for storing and exchanging data.
* JSON is text, written with JavaScript object notation.

* Can be shared across network
* arrays, nested elements
* widely accepted
* can be read by different languages
* no schema enforcing
* can be big in size because of repeated keys
* no feature to add comments

```json
{
  "firstName": "John",
  "lastName": "Smith",
  "isAlive": true,
  "age": 27,
  "address": {
    "streetAddress": "21 2nd Street",
    "city": "New York",
    "state": "NY",
    "postalCode": "10021-3100"
  },
  "phoneNumbers": [
    {
      "type": "home",
      "number": "212 555-1234"
    },
    {
      "type": "office",
      "number": "646 555-4567"
    }
  ],
  "children": [],
  "spouse": null
}
```

### Protobuf

* Protocol buffers are Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data – think XML, but smaller, faster, and simpler
* You define how you want your data to be structured once, then you can use special generated source code to easily write and read your structured data to and from a variety of data streams and using a variety of languages

* can be easily read an understand
* fully typed
* compressed automatically (less cpu usage)
* schema (defined in .proto) is needed to generate code and read the data
comments
* can be read across different programming languages
* schema can evolve over time in a safe manner
* 3-10x smaller, 20-100x faster than xml

```protobuf
message Person {
  required string name = 1;
  required int32 id = 2;
  optional string email = 3;
}
```

## Protobuf Usage Example

* [using_protobuf_in_code](using_protobuf_in_code/README.md)
