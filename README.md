# protobuf

## Why Protobuf?

### CSV
* easy to parse, read, makes sense of
* data types need to be inferred and not gurantee, tricky when data contains comma, column names

### RDMS

* Fully typed, fits in table
* Flat data, stored in db and data defintion will be different for each database
* Difficult to share

### JSON

* Can be shared across network
* arrays, nested elements
* widely accepted
* can be read by different languages
* no schema enforcing
* can be big in size because of repeated keys
* no feature to add comments

### Protobuf

* can be easily read an understand
* fully typed
* compressed automatically (less cpu usage)
* schema (defined in .proto) is needed to generate code and read the data
comments
* can be read across different programming languages
* schema can evolve over time in a safe manner
* 3-10x smaller, 20-100x faster than xml







