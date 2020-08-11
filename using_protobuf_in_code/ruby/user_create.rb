require_relative 'user_pb'

@filename = '../user.bin'

def writeToFile(msg)
  pp "Writing to file #{@filename}"
  File.write(@filename, msg, mode: 'wb')
end

def readFromFile
  pp "Reading from file #{@filename}"
  msg = User.new
  file = File.open(@filename, 'rb')
  data = file.read
  pp "Data read from file: #{data}"
  pp "Decoded protobuf: #{User.decode(data)}"
  file.close
end

# Create protobuf message
msg = User.new
msg.id = 1
msg.name = 'Jake'
msg.email = 'jake@testdomain.com'

pp "Protobuf message created: #{msg}"

# encode it as binary
encoded_msg = User.encode(msg)
pp "Encoded msg: #{encoded_msg}"
writeToFile(encoded_msg)

readFromFile
