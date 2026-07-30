# Secret Scanning using Trivy

## Objective

To detect hardcoded secrets such as passwords, API keys, AWS credentials, and tokens before deployment.

## Test File

Local-Implementation/Test-Secrets/secret.txt

## Command Used

```bash
trivy fs Local-Implementation/Test-Secrets
```

## Save Report

```bash
trivy fs -f table -o Local-Implementation/Trivy/Reports/secret-scan-report.txt Local-Implementation/Test-Secrets
```

## Result

The scan checked the test files for exposed secrets and generated a report for review.

## Conclusion

Secret scanning helps developers identify sensitive information before code is committed to GitHub or deployed.