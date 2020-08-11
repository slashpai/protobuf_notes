# Protobuf Usage in Code

* Create protobuf user.proto in protos folder

* Create ruby and python (name anything) to store respective source codes

* Generate ruby and python source code using protoc compiler

  ```bash
  protoc -I protos --ruby_out ruby --python_out python protos/user.proto
  ```

* Create a program in ruby to write a protobuf message to a file and read it

  * [user_create.rb](ruby/user_create.rb)

* Create a program in python to read from file which ruby program created

  * [user_read.py](python/user_read.py)