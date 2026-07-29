# 🚀 Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform

![Status](https://img.shields.io/badge/Status-Active-brightgreen)
![Platform](https://img.shields.io/badge/Platform-Linux-blue)
![Monitoring](https://img.shields.io/badge/Prometheus-Monitoring-orange)
![Visualization](https://img.shields.io/badge/Grafana-Dashboard-red)
![Logging](https://img.shields.io/badge/Loki-Logging-purple)
![Cloud](https://img.shields.io/badge/AWS-Cloud-yellow)
![Automation](https://img.shields.io/badge/Jenkins-CI%2FCD-red)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📖 Project Overview

The **Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform** is an enterprise-grade monitoring, logging, visualization, and automation solution designed to monitor Linux-based infrastructure using open-source technologies.

The platform provides real-time monitoring of server health, website availability, application performance, centralized log management, dashboard visualization, automated alerting, and infrastructure automation. It is designed to evolve from a traditional virtual machine deployment into a cloud-native platform using containerization, cloud services, and CI/CD automation.

---

# 🎯 Objectives

- Monitor enterprise Linux infrastructure
- Collect real-time system metrics
- Monitor CPU, Memory, Disk and Network utilization
- Monitor website availability
- Monitor Nginx performance
- Centralize system and application logs
- Generate automated alerts
- Visualize infrastructure health using dashboards
- Automate deployments
- Support cloud-native infrastructure

---

# 🏗️ System Architecture

The project consists of three Linux Virtual Machines.

## Monitoring Server (Ubuntu)

### Installed Services

- Prometheus
- Grafana
- Alertmanager
- Blackbox Exporter

### Responsibilities

- Collect Metrics
- Store Metrics
- Dashboard Visualization
- Alert Generation
- Website Monitoring

---

## Web Server (Debian)

### Installed Services

- Nginx
- Node Exporter
- Nginx Exporter
- Promtail

### Responsibilities

- Host Website
- Export System Metrics
- Export Nginx Metrics
- Forward Logs to Loki

---

## Log Server (CentOS Stream)

### Installed Services

- Loki
- Promtail
- Node Exporter

### Responsibilities

- Centralized Log Storage
- Log Collection
- System Monitoring

---

# 📊 Monitoring Workflow

```
Node Exporter
        │
        ▼
   Prometheus
        │
        ▼
    Grafana
```

---

# 📝 Logging Workflow

```
Application Logs
        │
        ▼
    Promtail
        │
        ▼
       Loki
        │
        ▼
    Grafana
```

---

# 🚨 Alert Workflow

```
Prometheus
      │
      ▼
Alertmanager
      │
      ▼
 Email Notifications
```

---

# ✨ Features

- Infrastructure Monitoring
- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Network Monitoring
- Website Monitoring
- Nginx Monitoring
- Centralized Logging
- Dashboard Visualization
- Automated Alerting
- Real-time Metrics Collection
- Log Aggregation
- Infrastructure Automation
- Cloud-Native Ready Architecture

---

# 🛠️ Technology Stack

## Operating Systems

- Ubuntu Server
- Debian
- CentOS Stream

## Monitoring

- Prometheus
- Node Exporter
- Nginx Exporter
- Blackbox Exporter

## Logging

- Loki
- Promtail

## Visualization

- Grafana

## Alerting

- Alertmanager

## Web Server

- Nginx

## Virtualization

- VMware Workstation

## Containerization

- Docker *(Planned)*

## Cloud Platform

- AWS EC2 *(Planned)*

## Automation

- Jenkins *(Planned)*
- CI/CD *(Planned)*

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
│   ├── Architecture.md
│   ├── Installation.md
│   ├── UserGuide.md
│   ├── diagrams/
│   └── screenshots/
│
├── monitoring-server/
│   ├── prometheus/
│   ├── grafana/
│   ├── alertmanager/
│   └── blackbox/
│
├── web-server/
│   ├── nginx/
│   ├── node-exporter/
│   ├── nginx-exporter/
│   └── promtail/
│
├── log-server/
│   ├── loki/
│   ├── promtail/
│   └── node-exporter/
│
├── scripts/
│
└── screenshots/
```

---

# 📷 Screenshots

The repository will include screenshots for:

- Grafana Dashboard
- Prometheus Targets
- Prometheus Alerts
- Alertmanager
- Loki Logs
- Blackbox Exporter
- Node Exporter Dashboard
- Nginx Dashboard
- Infrastructure Architecture

---

# 🚀 Future Enhancements

The platform will be extended with:

- Docker Containerization
- AWS EC2 Deployment
- Jenkins CI/CD Pipeline
- Infrastructure Automation
- Kubernetes Deployment
- High Availability
- Auto Scaling
- Multi-Cloud Support
- Infrastructure as Code
- Advanced Security Monitoring

---

# 📚 Documentation

Detailed documentation is available in the **docs** directory.

- Architecture Guide
- Installation Guide
- User Guide
- Configuration Files

---

# 👨‍💻 Authors

**Major Project Team**

**Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform**

---

# 📄 License

This project is developed for educational and academic purposes as part of a Major Project.
