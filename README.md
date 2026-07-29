# 🚀 Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform

> **A production-inspired enterprise monitoring, observability, and automation platform implementing both traditional Linux infrastructure monitoring and cloud-native deployment using modern DevOps technologies.**

<p align="center">

![Linux](https://img.shields.io/badge/Linux-Ubuntu%20|%20Debian%20|%20CentOS-E95420?style=for-the-badge&logo=linux&logoColor=white)
![Prometheus](https://img.shields.io/badge/Prometheus-Monitoring-E6522C?style=for-the-badge&logo=prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-Dashboards-F46800?style=for-the-badge&logo=grafana&logoColor=white)
![Loki](https://img.shields.io/badge/Loki-Logging-0A84FF?style=for-the-badge)
![Docker](https://img.shields.io/badge/Docker-Containerization-2496ED?style=for-the-badge&logo=docker)
![AWS](https://img.shields.io/badge/AWS-EC2-FF9900?style=for-the-badge&logo=amazonaws)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-D24939?style=for-the-badge&logo=jenkins)
![GitHub](https://img.shields.io/badge/GitHub-Version%20Control-181717?style=for-the-badge&logo=github)

</p>

---

# 📖 Project Overview

The **Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform** is a complete enterprise observability solution developed to monitor Linux infrastructure, centralize system and application logs, visualize infrastructure health, generate automated alerts, and automate deployment workflows.

The project demonstrates two fully implemented deployment environments:

- **Local Enterprise Infrastructure** using Ubuntu, Debian, and CentOS virtual machines.
- **Cloud-Native Infrastructure** using Docker Compose, AWS EC2, and Jenkins CI/CD.

The platform integrates monitoring, logging, visualization, automation, and cloud deployment into a unified enterprise solution using industry-standard open-source technologies.

---

# 🎯 Project Objectives

- Monitor enterprise Linux infrastructure
- Collect real-time infrastructure metrics
- Monitor CPU, Memory, Disk and Network utilization
- Monitor website availability
- Monitor Nginx web server performance
- Centralize system and application logs
- Visualize infrastructure health using Grafana
- Generate automated alerts using Alertmanager
- Deploy monitoring services using Docker Compose
- Host the monitoring platform on AWS EC2
- Automate deployment using Jenkins CI/CD
- Demonstrate enterprise DevOps and observability practices

---

# 🏗️ Deployment Environments

## 🖥️ Local Enterprise Infrastructure

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

## ☁️ Cloud-Native Infrastructure

Containerized deployment using Docker Compose on AWS.

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

# 📊 System Architecture

```text
                     Enterprise Monitoring Platform

         ┌──────────────────────────────────────────────┐
         │ Cloud-Native Enterprise Monitoring Platform  │
         └──────────────────────────────────────────────┘
                             │
          ┌──────────────────┴──────────────────┐
          │                                     │
          ▼                                     ▼

 Local Enterprise Deployment          Cloud-Native Deployment

 Ubuntu Monitoring Server             Docker Compose
 Debian Web Server                    Prometheus
 CentOS Log Server                    Grafana
                                      Loki
 Prometheus                           Promtail
 Grafana                              Nginx
 Alertmanager                         Jenkins
 Blackbox Exporter                    AWS EC2
 Loki

          │                                     │
          └──────────────────┬──────────────────┘
                             ▼

      Unified Monitoring • Logging • Automation • Visualization
```

---

# ✨ Features

## 📊 Infrastructure Monitoring

- CPU Monitoring
- Memory Monitoring
- Disk Monitoring
- Network Monitoring
- Filesystem Monitoring
- Linux Host Monitoring

---

## 🌐 Website Monitoring

- Website Availability Monitoring
- HTTP Health Checks
- Response Time Monitoring
- Blackbox Exporter Integration

---

## 🖥️ Web Server Monitoring

- Nginx Performance Monitoring
- Active Connections
- Request Monitoring
- Nginx Metrics Export

---

## 📄 Centralized Logging

- Loki Log Aggregation
- Promtail Log Collection
- System Log Monitoring
- Application Log Monitoring
- Centralized Log Storage

---

## 📈 Dashboard Visualization

- Grafana Dashboards
- Infrastructure Overview
- Resource Utilization
- Performance Analytics
- Real-Time Metrics

---

## 🚨 Alert Management

- Alertmanager
- Email Notifications
- CPU Alerts
- Memory Alerts
- Disk Alerts
- Website Availability Alerts
- Host Status Alerts

---

## ☁️ Cloud & Automation

- Docker Containerization
- Docker Compose Orchestration
- AWS EC2 Deployment
- Jenkins CI/CD Pipeline
- Automated Deployment Workflow

---

# 🛠️ Technology Stack

| Category | Technologies |
|----------|--------------|
| Operating Systems | Ubuntu Server, Debian, CentOS Stream |
| Monitoring | Prometheus, Node Exporter, Nginx Exporter, Blackbox Exporter |
| Logging | Loki, Promtail |
| Visualization | Grafana |
| Alerting | Alertmanager |
| Web Server | Nginx |
| Virtualization | VMware Workstation |
| Containerization | Docker, Docker Compose |
| Cloud Platform | AWS EC2 |
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

# 📸 Project Gallery

The repository includes screenshots of:

- Grafana Dashboards
- Prometheus Targets
- Prometheus Alerts
- Alertmanager
- Loki Logs
- Website Monitoring
- Nginx Dashboard
- Node Exporter Dashboard
- Docker Containers
- Jenkins Pipeline
- AWS EC2 Deployment
- Infrastructure Architecture

---

# ✅ Project Deliverables

- Enterprise Linux Infrastructure Monitoring
- Website Availability Monitoring
- Nginx Performance Monitoring
- Centralized Log Management
- Interactive Grafana Dashboards
- Automated Alerting
- Multi-VM Local Deployment
- Docker-Based Deployment
- AWS EC2 Deployment
- Jenkins CI/CD Pipeline
- Complete Technical Documentation
- Deployment and Configuration Files

---

# 📚 Documentation

Detailed documentation is available in the `docs/` directory.

- Architecture Guide
- Installation Guide
- User Guide
- Configuration Files
- Deployment Guide
- Project Screenshots

---

# 👨‍💻 Developed By

**Major Project Team**

**Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform**

---

# 📄 License

This project is licensed under the **MIT License**.
