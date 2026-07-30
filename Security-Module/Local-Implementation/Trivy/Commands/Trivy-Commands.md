# Trivy Commands Documentation

## Project

Enterprise Infrastructure Monitoring & Automation Platform

## Module

Security (DevSecOps)

---

# Verify Trivy Installation

## Check Version

```bash
trivy --version
```

**Purpose**

Verifies that Trivy is installed correctly.

---

# Docker Image Scanning

## Pull Nginx Image

```bash
docker pull nginx
```

## Scan Nginx Image

```bash
trivy image nginx
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/nginx-report.txt nginx
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/nginx-report.json nginx
```

---

# Prometheus Image

## Pull Image

```bash
docker pull prom/prometheus
```

## Scan Image

```bash
trivy image prom/prometheus
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/prometheus-report.txt prom/prometheus
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/prometheus-report.json prom/prometheus
```

---

# Grafana Image

## Pull Image

```bash
docker pull grafana/grafana
```

## Scan Image

```bash
trivy image grafana/grafana
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/grafana-report.txt grafana/grafana
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/grafana-report.json grafana/grafana
```

---

# Loki Image

## Pull Image

```bash
docker pull grafana/loki
```

## Scan Image

```bash
trivy image grafana/loki
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/loki-report.txt grafana/loki
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/loki-report.json grafana/loki
```

---

# Promtail Image

## Pull Image

```bash
docker pull grafana/promtail
```

## Scan Image

```bash
trivy image grafana/promtail
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/promtail-report.txt grafana/promtail
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/promtail-report.json grafana/promtail
```

---

# Alertmanager Image

## Pull Image

```bash
docker pull prom/alertmanager
```

## Scan Image

```bash
trivy image prom/alertmanager
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/alertmanager-report.txt prom/alertmanager
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/alertmanager-report.json prom/alertmanager
```

---

# Node Exporter Image

## Pull Image

```bash
docker pull prom/node-exporter
```

## Scan Image

```bash
trivy image prom/node-exporter
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/node-exporter-report.txt prom/node-exporter
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/node-exporter-report.json prom/node-exporter
```

---

# Blackbox Exporter Image

## Pull Image

```bash
docker pull prom/blackbox-exporter
```

## Scan Image

```bash
trivy image prom/blackbox-exporter
```

## Save TXT Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/blackbox-exporter-report.txt prom/blackbox-exporter
```

## Save JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/blackbox-exporter-report.json prom/blackbox-exporter
```

---

# Filesystem Scanning

## Scan Filesystem

```bash
trivy fs Test-Files/Sample-App
```

## Save Report

```bash
trivy fs -f table -o Local-Implementation/Trivy/Reports/filesystem-report.txt Test-Files/Sample-App
```

---

# Secret Scanning

## Scan Test Secrets

```bash
trivy fs Local-Implementation/Test-Secrets
```

## Save Report

```bash
trivy fs -f table -o Local-Implementation/Trivy/Reports/secret-scan-report.txt Local-Implementation/Test-Secrets
```

---

# Configuration Scanning

## Scan Docker Compose Configuration

```bash
trivy config Local-Implementation/Config-Scan
```

## Save Report

```bash
trivy config -f table -o Local-Implementation/Trivy/Reports/config-scan-report.txt Local-Implementation/Config-Scan
```

---

# Verify Generated Reports

```bash
dir Local-Implementation\Trivy\Reports
```

---

# Verify Docker Images

```bash
docker images
```

---

# Verify Running Containers

```bash
docker ps
```

---

# Summary

The following Trivy features were successfully implemented:

- Docker Image Vulnerability Scanning
- Filesystem Scanning
- Secret Scanning
- Configuration Scanning
- TXT Report Generation
- JSON Report Generation

These activities demonstrate the implementation of the DevSecOps security layer for the Enterprise Infrastructure Monitoring & Automation Platform.