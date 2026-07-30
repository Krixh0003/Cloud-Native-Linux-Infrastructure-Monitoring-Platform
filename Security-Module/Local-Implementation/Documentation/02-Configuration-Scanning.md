# Configuration Scanning using Trivy

## Objective

To identify security misconfigurations in Infrastructure-as-Code (IaC) files before deployment.

## File Scanned

Local-Implementation/Config-Scan/docker-compose.yml

## Commands Used

```bash
trivy config Local-Implementation/Config-Scan

trivy config -f table -o Local-Implementation/Trivy/Reports/config-scan-report.txt Local-Implementation/Config-Scan
```

## Result

Trivy analyzed the Docker Compose configuration for security best practices and reported any detected misconfigurations.

## Conclusion

Configuration scanning helps identify insecure container configurations before deployment, improving the overall security posture of the infrastructure.