# 🚀 Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform

> **An enterprise-grade monitoring, observability, and automation platform demonstrating the evolution from traditional infrastructure monitoring to a modern cloud-native deployment.**

![Linux](https://img.shields.io/badge/Linux-Ubuntu%20|%20Debian%20|%20CentOS-E95420?style=for-the-badge&logo=linux&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-Dashboards-F46800?style=for-the-badge&logo=grafana&logoColor=white)
![Loki](https://img.shields.io/badge/Loki-Logging-0A84FF?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker)
![AWS](https://img.shields.io/badge/AWS-Cloud-FF9900?style=for-the-badge&logo=amazonaws)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?style=for-the-badge&logo=jenkins)

---

# 📖 Overview

The **Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform** is a comprehensive observability solution designed to monitor enterprise Linux infrastructure, centralize system and application logs, visualize operational metrics, and automate deployments using modern DevOps practices.

The project demonstrates two deployment approaches:

- **Traditional VM-Based Deployment** using Linux virtual machines.
- **Cloud-Native Deployment** using Docker containers, AWS infrastructure, and Jenkins CI/CD.

This progression showcases the migration of enterprise infrastructure from conventional server-based environments to scalable cloud-native architectures.

---

# 🎯 Project Objectives

- Monitor enterprise Linux infrastructure
- Collect real-time system metrics
- Centralize system and application logs
- Monitor website availability
- Visualize infrastructure health
- Generate automated alerts
- Implement infrastructure automation
- Demonstrate cloud-native deployment
- Build CI/CD pipelines
- Showcase modern DevOps practices

---

# 🏗️ Deployment Models

## 🖥️ Local Infrastructure Deployment

Traditional deployment using three Linux Virtual Machines.

### Monitoring Server (Ubuntu)

- Prometheus
- Grafana
- Alertmanager
- Blackbox Exporter

### Web Server (Debian)

- Nginx
- Node Exporter
- Nginx Exporter
- Promtail

### Log Server (CentOS Stream)

- Loki
- Promtail
- Node Exporter

---

## ☁️ Cloud-Native Deployment

Containerized deployment using Docker and cloud technologies.

### Components

- Docker Compose
- Prometheus
- Grafana
- Loki
- Promtail
- Nginx
- Jenkins
- Jenkins Pipeline
- AWS EC2

---

# 📊 Architecture Evolution

```text
                    Enterprise Monitoring Platform

                Traditional Infrastructure
                        │
                        ▼
      Ubuntu + Debian + CentOS Virtual Machines
                        │
                        ▼
             Monitoring • Logging • Alerting
                        │
                        ▼
              Containerization (Docker)
                        │
                        ▼
                AWS Cloud Deployment
                        │
                        ▼
                  Jenkins CI/CD Pipeline
```

---

# ✨ Features

### Infrastructure Monitoring

- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Network Monitoring
- Host Monitoring

### Website Monitoring

- Blackbox Exporter
- HTTP Health Checks
- Response Time Monitoring

### Web Server Monitoring

- Nginx Metrics
- Active Connections
- Request Monitoring

### Centralized Logging

- Loki
- Promtail
- Log Aggregation
- Log Querying

### Visualization

- Grafana Dashboards
- Infrastructure Overview
- Performance Analytics

### Alerting

- Alertmanager
- Email Notifications
- Infrastructure Alerts

### Cloud & Automation

- Docker Containerization
- AWS Deployment
- Jenkins CI/CD
- Automated Deployment

---

# 🛠️ Technology Stack

| Category | Technologies |
|----------|--------------|
| Operating Systems | Ubuntu, Debian, CentOS Stream |
| Monitoring | Prometheus, Node Exporter, Nginx Exporter, Blackbox Exporter |
| Visualization | Grafana |
| Logging | Loki, Promtail |
| Alerting | Alertmanager |
| Web Server | Nginx |
| Virtualization | VMware Workstation |
| Containerization | Docker, Docker Compose |
| Cloud | AWS EC2 |
| CI/CD | Jenkins |
| Version Control | Git & GitHub |

---

# 📁 Repository Structure

```text
Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform
│
├── README.md
├── LICENSE
├── .gitignore
│
├── docs/
│
├── monitoring-server/
│
├── web-server/
│
├── log-server/
│
├── scripts/
│
├── phase-2/
│   ├── docker-compose.yml
│   ├── prometheus/
│   ├── grafana/
│   ├── loki/
│   ├── promtail/
│   ├── nginx/
│   ├── jenkins/
│   └── Jenkinsfile
│
└── screenshots/
```

---

# 📷 Screenshots

The repository includes screenshots for:

- Grafana Dashboards
- Prometheus Targets
- Alertmanager
- Loki Logs
- Website Monitoring
- Docker Containers
- Jenkins Pipeline
- AWS Deployment
- Architecture Diagrams

---

# 🚀 Future Enhancements

- Kubernetes
- Helm Charts
- Prometheus Operator
- Grafana Operator
- Multi-Node Monitoring
- Auto Scaling
- Disaster Recovery
- Infrastructure as Code
- GitHub Actions Integration
- Advanced Security Monitoring

---

# 📚 Documentation

Comprehensive documentation is available in the `docs/` directory, including architecture, installation, deployment, and user guides for both local and cloud-native environments.

---

# 👨‍💻 Authors

**Major Project Team**

**Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform**

---

# 📄 License

This project is licensed under the MIT License.
