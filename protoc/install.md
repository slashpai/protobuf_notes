# Installing in linux machines

[Download zip file](https://github.com/protocolbuffers/protobuf/releases/download/v3.12.4/protobuf-all-3.12.4.zip), choose your needed version, current one I choose is 3.12.4


## Extract zip file and install lib

```bash
sudo unzip protobuf-all-3.12.4.zip -d /usr/local/bin
cd /usr/local/bin/protobuf-3.12.4
sudo ./configure
sudo make
sudo make check
sudo make install
sudo ldconfig # refresh shared library cache.
```

## Verify Installation

```bash
protoc --version
```
