#!/bin/bash

set -e

echo "========== Running Lynis Audit =========="

ssh ubuntu@172.31.19.203 "
sudo lynis audit system \
--quick \
--logfile ~/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform/AWS-Security-Reports/lynis.log \
--report-file ~/Cloud-native-Enterprise-Infrastructure-Monitoring-log-management-Automation-Platform/AWS-Security-Reports/lynis-report.dat
"

echo "Lynis audit completed."

