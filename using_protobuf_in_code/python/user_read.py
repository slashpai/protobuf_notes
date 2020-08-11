import user_pb2

filename = '../user.bin'

with open(filename, 'rb') as f:
  msg = user_pb2.User().FromString(f.read())
  print(msg)
