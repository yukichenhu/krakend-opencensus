module github.com/yukichenhu/krakend-opencensus/v2

go 1.17

require (
	contrib.go.opencensus.io/exporter/aws v0.0.0-20181029163544-2befc13012d0
	contrib.go.opencensus.io/exporter/jaeger v0.0.0-20190424224017-5b8293c22f36
	contrib.go.opencensus.io/exporter/ocagent v0.6.0
	contrib.go.opencensus.io/exporter/prometheus v0.0.0-20190424224027-f02a6e68f94d
	contrib.go.opencensus.io/exporter/stackdriver v0.7.0
	contrib.go.opencensus.io/exporter/zipkin v0.0.0-20190424224031-c96617f51dc6
	github.com/DataDog/opencensus-go-exporter-datadog v0.0.0-20191210083620-6965a1cfed68
	github.com/aws/aws-sdk-go v1.15.31
	github.com/fvbock/endless v0.0.0-20170109170031-447134032cb6
	github.com/gin-gonic/gin v1.7.7
	github.com/kpacha/opencensus-influxdb v0.0.0-20180520162117-1b490a38de4c
	github.com/krakendio/krakend-opencensus/v2 v2.0.0-00010101000000-000000000000
	github.com/luraproject/lura/v2 v2.0.5
	github.com/openzipkin/zipkin-go v0.1.6
	github.com/prometheus/client_golang v0.9.4
	go.opencensus.io v0.22.3
	google.golang.org/grpc v1.27.1
)

require (
	cloud.google.com/go v0.38.0 // indirect
	github.com/DataDog/datadog-go v3.4.1+incompatible // indirect
	github.com/apache/thrift v0.12.0 // indirect
	github.com/beorn7/perks v1.0.0 // indirect
	github.com/census-instrumentation/opencensus-proto v0.2.1 // indirect
	github.com/gin-contrib/sse v0.1.0 // indirect
	github.com/go-ini/ini v1.37.0 // indirect
	github.com/go-playground/locales v0.14.0 // indirect
	github.com/go-playground/universal-translator v0.18.0 // indirect
	github.com/go-playground/validator/v10 v10.9.0 // indirect
	github.com/golang/groupcache v0.0.0-20200121045136-8c9f03a8e57e // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	github.com/google/go-cmp v0.5.5 // indirect
	github.com/googleapis/gax-go/v2 v2.0.5 // indirect
	github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1 // indirect
	github.com/grpc-ecosystem/grpc-gateway v1.13.0 // indirect
	github.com/influxdata/influxdb v1.5.2 // indirect
	github.com/jmespath/go-jmespath v0.0.0-20160202185014-0b12d6b521d8 // indirect
	github.com/json-iterator/go v1.1.12 // indirect
	github.com/jtolds/gls v4.20.0+incompatible // indirect
	github.com/krakendio/flatmap v1.1.1 // indirect
	github.com/leodido/go-urn v1.2.1 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.2 // indirect
	github.com/philhofer/fwd v1.0.0 // indirect
	github.com/prometheus/client_model v0.0.0-20190812154241-14fe0d1b01d4 // indirect
	github.com/prometheus/common v0.4.1 // indirect
	github.com/prometheus/procfs v0.0.6 // indirect
	github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d // indirect
	github.com/tinylib/msgp v1.1.2 // indirect
	github.com/ugorji/go/codec v1.2.6 // indirect
	github.com/valyala/fastrand v1.1.0 // indirect
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519 // indirect
	golang.org/x/net v0.0.0-20210226172049-e18ecbb05110 // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45 // indirect
	golang.org/x/sync v0.0.0-20210220032951-036812b2e83c // indirect
	golang.org/x/sys v0.0.0-20211004093028-2c5d950f24ef // indirect
	golang.org/x/text v0.3.7 // indirect
	google.golang.org/api v0.19.0 // indirect
	google.golang.org/appengine v1.5.0 // indirect
	google.golang.org/genproto v0.0.0-20200302123026-7795fca6ccb1 // indirect
	google.golang.org/protobuf v1.27.1 // indirect
	gopkg.in/DataDog/dd-trace-go.v1 v1.22.0 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)

replace github.com/krakendio/krakend-opencensus/v2 => github.com/yukichenhu/krakend-opencensus/v2 v2.0.0-20220902082115-e1565d2c32df
