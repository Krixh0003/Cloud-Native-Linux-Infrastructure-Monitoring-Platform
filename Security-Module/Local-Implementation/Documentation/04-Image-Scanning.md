# Docker Image Scanning using Trivy

## Project Name

**Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform**

## Module

**Security (DevSecOps)**

---

# 1. Introduction

Docker image scanning is the process of analyzing container images to identify known security vulnerabilities before deployment. Trivy scans operating system packages and application dependencies inside Docker images and reports vulnerabilities based on publicly available CVE databases.

In this project, Docker image scanning was performed during the local development phase to improve container security before deployment to AWS.

---

# 2. Objective

The objectives of image scanning are:

- Detect known vulnerabilities in Docker images.
- Improve application security before deployment.
- Generate vulnerability reports.
- Follow DevSecOps security practices.

---

# 3. Docker Images Scanned

The following images used in the project were scanned:

- Nginx
- Prometheus
- Grafana
- Loki
- Promtail
- Alertmanager
- Node Exporter
- Blackbox Exporter

---

# 4. Commands Used

## Pull Docker Image

```bash
docker pull nginx
```

## Scan Docker Image

```bash
trivy image nginx
```

## Generate Text Report

```bash
trivy image -f table -o Local-Implementation/Trivy/Reports/nginx-report.txt nginx
```

## Generate JSON Report

```bash
trivy image -f json -o Local-Implementation/Trivy/Reports/nginx-report.json nginx
```

The same process was repeated for all project images.

---

# 5. Scan Workflow

1. Pull the Docker image.
2. Scan the image using Trivy.
3. Analyze detected vulnerabilities.
4. Generate TXT and JSON reports.
5. Review Critical and High severity findings.

---

# 6. Severity Levels

| Severity | Description |
|----------|-------------|
| Critical | Immediate action required |
| High | Serious vulnerability |
| Medium | Moderate vulnerability |
| Low | Minor vulnerability |
| Unknown | Severity not assigned |

---

# 7. Reports Generated

Reports generated during implementation include:

- nginx-report.txt
- nginx-report.json
- prometheus-report.txt
- prometheus-report.json
- grafana-report.txt
- grafana-report.json
- loki-report.txt
- loki-report.json
- promtail-report.txt
- promtail-report.json
- alertmanager-report.txt
- alertmanager-report.json
- node-exporter-report.txt
- node-exporter-report.json
- blackbox-exporter-report.txt
- blackbox-exporter-report.json

---

# 8. Benefits

- Detects vulnerabilities before deployment.
- Improves container security.
- Generates detailed security reports.
- Supports secure cloud deployment.
- Helps follow DevSecOps best practices.

---

# 9. Conclusion

Docker image scanning was successfully performed using Trivy on all container images used in the project. Vulnerability reports were generated and stored for analysis before deployment to AWS.