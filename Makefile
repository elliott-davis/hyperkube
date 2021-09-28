export GO111MODULE=on
BINARY_NAME=hyperkube

all: build
build:
	mkdir -p bin
	go build -mod vendor -o bin/containerd -tags="dockerless,providerless,ctrd" -ldflags="-s -w" cmd/hyperkube/main.go
	ln -sf ./bin/containerd ./bin/hyperkube
compress-release: build
	upx --ultra-brute bin/containerd
clean:
	GO111MODULE=off go clean
	rm -rf ./bin/
