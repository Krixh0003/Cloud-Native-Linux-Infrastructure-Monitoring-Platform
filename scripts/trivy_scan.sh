#!/bin/bash

set -e

echo "========== Running Trivy Scan =========="

mkdir -p AWS-Security-Reports

ssh ubuntu@172.31.19.203 "
sudo trivy image nginx:latest \
--format table \
--output ~/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform/AWS-Security-Reports/trivy-report.txt
"

echo "Trivy scan completed."
