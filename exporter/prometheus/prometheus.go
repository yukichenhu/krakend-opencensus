package prometheus

import (
	"context"
	"contrib.go.opencensus.io/exporter/prometheus"
	"errors"
	"fmt"
	"github.com/fvbock/endless"
	opencensus "github.com/krakendio/krakend-opencensus/v2"
	prom "github.com/prometheus/client_golang/prometheus"
	"log"
	"net/http"
	"time"
)

func init() {
	opencensus.RegisterExporterFactories(func(ctx context.Context, cfg opencensus.Config) (interface{}, error) {
		return Exporter(ctx, cfg)
	})
}

func Exporter(ctx context.Context, cfg opencensus.Config) (*prometheus.Exporter, error) {
	if cfg.Exporters.Prometheus == nil {
		return nil, errDisabled
	}

	prometheusRegistry := prom.NewRegistry()
	err := prometheusRegistry.Register(prom.NewProcessCollector(prom.ProcessCollectorOpts{}))
	if err != nil {
		return nil, err
	}
	err = prometheusRegistry.Register(prom.NewGoCollector())
	if err != nil {
		return nil, err
	}

	exporter, err := prometheus.NewExporter(prometheus.Options{Namespace: cfg.Exporters.Prometheus.Namespace, Registry: prometheusRegistry})
	if err != nil {
		return exporter, err
	}

	router := http.NewServeMux()
	router.Handle("/metrics", exporter)
	server := endless.NewServer(fmt.Sprintf(":%d", cfg.Exporters.Prometheus.Port), router)

	go func() {
		if serverErr := server.ListenAndServe(); serverErr != http.ErrServerClosed {
			log.Fatalf("[SERVICE: Opencensus] The Prometheus exporter failed to listen and serve: %v", serverErr)
		}
	}()

	go func() {
		<-ctx.Done()
		ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
		server.Shutdown(ctx)
		cancel()
	}()

	return exporter, nil
}

var errDisabled = errors.New("opencensus prometheus exporter disabled")
