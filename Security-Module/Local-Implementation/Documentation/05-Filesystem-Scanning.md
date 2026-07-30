# Filesystem Scanning using Trivy

## Project Name

**Cloud-Native Enterprise Infrastructure Monitoring, Log Management & Automation Platform**

## Module

**Security (DevSecOps)**

---

# 1. Introduction

Filesystem scanning is a security technique used to analyze local directories and files for vulnerable software packages and exposed secrets. Trivy scans project folders without requiring Docker images.

In this project, filesystem scanning was performed on a sample project directory during the local implementation phase.

---

# 2. Objective

The objectives of filesystem scanning are:

- Scan local project files.
- Detect vulnerable dependencies.
- Identify exposed secrets.
- Generate filesystem scan reports.

---

# 3. Folder Scanned

The following folder was scanned:

```text
Local-Implementation/Test-Files/Sample-App
```

---

# 4. Commands Used

## Run Filesystem Scan

```bash
trivy fs Local-Implementation/Test-Files/Sample-App
```

## Generate Report

```bash
trivy fs -f table -o Local-Implementation/Trivy/Reports/filesystem-report.txt Local-Implementation/Test-Files/Sample-App
```

---

# 5. Scan Workflow

1. Select the target directory.
2. Run Trivy filesystem scan.
3. Analyze scan output.
4. Generate report.
5. Save report for documentation.

---

# 6. Scan Result

The scan analyzed the project directory and checked for:

- Vulnerable packages
- Dependency files
- Exposed secrets
- Supported language packages

The generated report indicated no vulnerabilities or secrets were detected in the sample project.

---

# 7. Report Generated

The following report was generated:

- filesystem-report.txt

---

# 8. Benefits

- Scans local project directories.
- Detects vulnerable packages.
- Finds exposed secrets.
- Generates security reports.
- Improves application security before deployment.

---

# 9. Conclusion

Filesystem scanning was successfully completed using Trivy. The generated report confirmed that no vulnerabilities or secrets were detected in the scanned sample directory, demonstrating a clean baseline before deployment.