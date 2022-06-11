# Go parameters
GOCMD=GO111MODULE=on CGO_ENABLED=0 go
GOBUILD=$(GOCMD) build
GOTEST=$(GOCMD) test

all: test build
build:
	rm -rf dist/
	mkdir -p dist/conf
	cp cmd/discovery/discovery.toml dist/conf/discovery.toml
	$(GOBUILD) -o dist/discovery cmd/discovery/main.go

test:
	$(GOTEST) -v ./...

clean:
	rm -rf dist/

run:
	# 注意-conf后面的参数是配置文件所有目录，不能是具体文件，具体原因可以看代码
	nohup dist/discovery -conf=dist/conf 2>&1 > dist/nohup.out &

stop:
	pkill -f dist/discovery
	#ps -ef|grep dist/discovery |grep -v grep |awk '{print $2}' | xargs kill -9
