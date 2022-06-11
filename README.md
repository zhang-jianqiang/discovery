# Discovery

[![Build Status](https://travis-ci.org/bilibili/discovery.svg?branch=master)](https://travis-ci.org/bilibili/discovery) 
[![Go Report Card](https://goreportcard.com/badge/github.com/bilibili/discovery)](https://goreportcard.com/report/github.com/bilibili/discovery)
[![codecov](https://codecov.io/gh/Bilibili/discovery/branch/master/graph/badge.svg)](https://codecov.io/gh/Bilibili/discovery)

Discovery is a based service that is production-ready and primarily used at [Bilibili](https://www.bilibili.com/) for locating services for the purpose of load balancing and failover of middle-tier servers.

## 快速开始

### 环境

`go1.12.x` (and later)

### 编译

```shell
git clone https://github.com/bilibili/discovery.git
cd cmd/discovery
go build -o discovery
```

### 运行

```shell
./discovery -conf=discovery.toml
```
`-alsologtostderr`是`glog`的命令行参数，最新版的`discovery`日志库不再使用`glog`，因此原文档中这个参数是错误的

### 配置

You can view the comments in `cmd/discovery/discovery.toml` to understand the meaning of the config.

### Makefile

编译

```shell
make build
```

运行

```shell
make run
```



### 客户端

* [API Doc](doc/api.md)
* [Go SDK](naming/client.go) | [Example](naming/example_test.go)
* [Java SDK](https://github.com/flygit/discoveryJavaSDK)
* [CPP SDK](https://github.com/brpc/brpc/blob/master/src/brpc/policy/discovery_naming_service.cpp)
* [Python SDK](https://github.com/tomwei7/discovery-client)
* [other language](doc/sdk.md)

## 介绍/架构/实践

* [Introduction](doc/intro.md)
* [Architecture](doc/arch.md)
* [Practice in Bilibili](doc/practice.md)

## 反馈

Please report bugs, concerns, suggestions by issues, or join QQ-group 716486124 to discuss problems around source code.
