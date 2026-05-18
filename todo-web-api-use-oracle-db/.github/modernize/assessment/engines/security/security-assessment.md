# Security Assessment Report

**Generated:** 2026-05-18T03:16:24.0000000Z

## Summary

| Metric | Count |
|--------|-------|
| Total Findings | 19 |
| CVE Vulnerabilities | 17 |
| CWE Vulnerabilities | 2 |
| Total Rules Assessed | 59 |
| Rules Passed | 57 |

### By Severity

| Severity | Count |
|----------|-------|
| mandatory | 17 |
| optional | 2 |
| potential | 0 |

## CVE Findings (Dependency Vulnerabilities)

### CVE-2026-34483: Apache Tomcat has an Improper Encoding or Escaping of Output vulnerability in the JsonAccessLogValve
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2026-34483](https://github.com/advisories/GHSA-rv64-5gf8-9qq8): Apache Tomcat has an Improper Encoding or Escaping of Output vulnerability in the JsonAccessLogValve

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 9.0.40, < 9.0.116) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.54) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.21) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 9.0.40, < 9.0.116) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 10.1.0-M1, < 10.1.54) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 11.0.0-M1, < 11.0.21) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.40, < 9.0.116) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.54) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.21) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.54 or later
  - Upgrade to patched version 11.0.21 or later
  - Upgrade to patched version 9.0.116 or later

### CVE-2026-34487: Apache Tomcat vulnerable to Insertion of Sensitive Information into Log File
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2026-34487](https://github.com/advisories/GHSA-x4m4-345f-5h5g): Apache Tomcat vulnerable to Insertion of Sensitive Information into Log File

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 9.0.13, < 9.0.117) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.54) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.21) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 9.0.13, < 9.0.117) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 10.1.0-M1, < 10.1.54) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 11.0.0-M1, < 11.0.21) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.13, < 9.0.117) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.54) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.21) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.54 or later
  - Upgrade to patched version 11.0.21 or later
  - Upgrade to patched version 9.0.117 or later

### CVE-2026-29145: Apache Tomcat: CLIENT_CERT authentication does not fail as expected
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2026-29145](https://github.com/advisories/GHSA-95jq-rwvf-vjx4): Apache Tomcat: CLIENT_CERT authentication does not fail as expected

Severity: CRITICAL

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 9.0.83, < 9.0.116) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M7, < 10.1.53) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.20) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 9.0.83, < 9.0.116) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 10.1.0-M7, < 10.1.53) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 11.0.0-M1, < 11.0.20) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.83, < 9.0.116) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M7, < 10.1.53) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.20) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.53 or later
  - Upgrade to patched version 11.0.20 or later
  - Upgrade to patched version 9.0.116 or later

### CVE-2026-24734: Apache Tomcat has an Improper Input Validation vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2026-24734](https://github.com/advisories/GHSA-mgp5-rv84-w37q): Apache Tomcat has an Improper Input Validation vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-coyote (>= 11.0.0-M1, < 11.0.18) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 10.1.0-M7, < 10.1.52) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 9.0.83, < 9.0.115) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.18) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M7, < 10.1.52) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.83, < 9.0.115) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.52 or later
  - Upgrade to patched version 11.0.18 or later
  - Upgrade to patched version 9.0.115 or later

### CVE-2025-55752: Apache Tomcat Vulnerable to Relative Path Traversal
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2025-55752](https://github.com/advisories/GHSA-wmwf-9ccg-fff5): Apache Tomcat Vulnerable to Relative Path Traversal

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat (>= 11.0.0-M1, < 11.0.11) (declared via pom.xml)
  - org.apache.tomcat:tomcat (>= 10.1.0-M1, < 10.1.45) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.11) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.45) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.11) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.45) (declared via pom.xml:25)
  - org.apache.tomcat:tomcat (>= 9.0.0-M11, < 9.0.109) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 9.0.0-M11, < 9.0.109) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0-M11, < 9.0.109) (declared via pom.xml:25)
  - org.apache.tomcat:tomcat (>= 8.5.6, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 8.5.6, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.6, <= 8.5.100) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.45 or later
  - Upgrade to patched version 11.0.11 or later
  - Upgrade to patched version 9.0.109 or later

### CVE-2025-48989: Apache Tomcat Improper Resource Shutdown or Release vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2025-48989](https://github.com/advisories/GHSA-gqp3-2cvr-x8m3): Apache Tomcat Improper Resource Shutdown or Release vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-coyote (>= 11.0.0-M1, < 11.0.10) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 10.1.0-M1, < 10.1.44) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 9.0.0.M1, < 9.0.108) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.10) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.44) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, < 9.0.108) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.44 or later
  - Upgrade to patched version 11.0.10 or later
  - Upgrade to patched version 9.0.108 or later

### CVE-2025-53506: Apache Tomcat Coyote vulnerable to Denial of Service via excessive HTTP/2 streams
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2025-53506](https://github.com/advisories/GHSA-25xr-qj8w-c4vf): Apache Tomcat Coyote vulnerable to Denial of Service via excessive HTTP/2 streams

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-coyote (>= 11.0.0-M1, < 11.0.9) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 10.1.0-M1, < 10.1.43) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 9.0.0.M1, < 9.0.107) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 8.5.0, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.0, <= 8.5.100) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, < 9.0.107) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.43) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.9) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.43 or later
  - Upgrade to patched version 11.0.9 or later
  - Upgrade to patched version 9.0.107 or later

### CVE-2025-52520: Apache Tomcat Catalina is vulnerable to DoS attack through bypassing of size limits
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2025-52520](https://github.com/advisories/GHSA-wr62-c79q-cv37): Apache Tomcat Catalina is vulnerable to DoS attack through bypassing of size limits

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.9) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.43) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 9.0.0.M1, < 9.0.107) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 8.5.0, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.9) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.43) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, < 9.0.107) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.0, <= 8.5.100) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.43 or later
  - Upgrade to patched version 11.0.9 or later
  - Upgrade to patched version 9.0.107 or later

### CVE-2025-48988: Apache Tomcat - DoS in multipart upload
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2025-48988](https://github.com/advisories/GHSA-h3gc-qfqq-6h8f): Apache Tomcat - DoS in multipart upload

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, <= 11.0.7) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, <= 10.1.41) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 9.0.0.M1, <= 9.0.105) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, <= 11.0.7) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, <= 10.1.41) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, <= 9.0.105) (declared via pom.xml:25)
  - org.apache.tomcat:tomcat-catalina (>= 8.5.0, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.0, <= 8.5.100) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.42 or later
  - Upgrade to patched version 11.0.8 or later
  - Upgrade to patched version 9.0.106 or later

### CVE-2025-22235: Spring Boot EndpointRequest.to() creates wrong matcher if actuator endpoint is not exposed
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:57

[CVE-2025-22235](https://github.com/advisories/GHSA-rc42-6c7j-7h5r): Spring Boot EndpointRequest.to() creates wrong matcher if actuator endpoint is not exposed

Severity: HIGH

Affected dependencies:
  - org.springframework.boot:spring-boot (<= 2.7.24.2) (declared via pom.xml:57)
  - org.springframework.boot:spring-boot (>= 3.1.0, <= 3.1.15.2) (declared via pom.xml:57)
  - org.springframework.boot:spring-boot (>= 3.2.0, <= 3.2.13.2) (declared via pom.xml:57)
  - org.springframework.boot:spring-boot (>= 3.3.0, <= 3.3.10) (declared via pom.xml:57)
  - org.springframework.boot:spring-boot (>= 3.4.0, <= 3.4.4) (declared via pom.xml:57)

Recommended fix:
  - Upgrade to patched version 3.3.11 or later
  - Upgrade to patched version 3.4.5 or later

### CVE-2025-24813: Apache Tomcat: Potential RCE and/or information disclosure and/or information corruption with partial PUT
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2025-24813](https://github.com/advisories/GHSA-83qj-6fr2-vhqg): Apache Tomcat: Potential RCE and/or information disclosure and/or information corruption with partial PUT

Severity: CRITICAL

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.3) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.35) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 9.0.0.M1, < 9.0.99) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.3) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.35) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, < 9.0.99) (declared via pom.xml:25)
  - org.apache.tomcat:tomcat-catalina (>= 8.5.0, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.0, <= 8.5.100) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.35 or later
  - Upgrade to patched version 11.0.3 or later
  - Upgrade to patched version 9.0.99 or later

### CVE-2024-56337: Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2024-56337](https://github.com/advisories/GHSA-27hp-xhwr-wr2m): Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.2) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.34) (declared via pom.xml)
  - org.apache.tomcat:tomcat-embed-core (>= 9.0.0.M1, < 9.0.98) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.2) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.34) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, < 9.0.98) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.34 or later
  - Upgrade to patched version 11.0.2 or later
  - Upgrade to patched version 9.0.98 or later

### CVE-2024-38819: Spring Framework Path Traversal vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2024-38819](https://github.com/advisories/GHSA-g5vr-rgqm-vf78): Spring Framework Path Traversal vulnerability

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-webflux (>= 6.1.0, < 6.1.14) (declared via pom.xml)
  - org.springframework:spring-webmvc (>= 6.1.0, < 6.1.14) (declared via pom.xml:25)
  - org.springframework:spring-webflux (<= 5.3.39) (declared via pom.xml)
  - org.springframework:spring-webmvc (<= 5.3.39) (declared via pom.xml:25)
  - org.springframework:spring-webflux (>= 6.0.0, <= 6.0.23) (declared via pom.xml)
  - org.springframework:spring-webmvc (>= 6.0.0, <= 6.0.23) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 6.1.14 or later

### CVE-2024-50379: Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2024-50379](https://github.com/advisories/GHSA-5j33-cvvr-w245): Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat:tomcat-catalina (>= 11.0.0-M1, < 11.0.2) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 10.1.0-M1, < 10.1.34) (declared via pom.xml)
  - org.apache.tomcat:tomcat-catalina (>= 9.0.0.M1, < 9.0.98) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.2) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.34) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0.M1, < 9.0.98) (declared via pom.xml:25)
  - org.apache.tomcat:tomcat-catalina (>= 8.5.0, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.0, <= 8.5.100) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.34 or later
  - Upgrade to patched version 11.0.2 or later
  - Upgrade to patched version 9.0.98 or later

### CVE-2024-38816: Path traversal vulnerability in functional web frameworks
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2024-38816](https://github.com/advisories/GHSA-cx7f-g6mp-7hqm): Path traversal vulnerability in functional web frameworks

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-webmvc (>= 6.1.0, < 6.1.13) (declared via pom.xml:25)
  - org.springframework:spring-webflux (>= 6.1.0, < 6.1.13) (declared via pom.xml)
  - org.springframework:spring-webmvc (>= 6.0.0, <= 6.0.23) (declared via pom.xml:25)
  - org.springframework:spring-webflux (>= 6.0.0, <= 6.0.23) (declared via pom.xml)
  - org.springframework:spring-webmvc (>= 5.3.0, <= 5.3.39) (declared via pom.xml:25)
  - org.springframework:spring-webflux (>= 5.3.0, <= 5.3.39) (declared via pom.xml)

Recommended fix:
  - Upgrade to patched version 6.1.13 or later

### CVE-2024-34750: Apache Tomcat - Denial of Service
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml, pom.xml:25

[CVE-2024-34750](https://github.com/advisories/GHSA-wm9w-rjj3-j356): Apache Tomcat - Denial of Service

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core (>= 11.0.0-M1, < 11.0.0-M21) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 10.1.0-M1, < 10.1.25) (declared via pom.xml:25)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 9.0.0-M1, < 9.0.90) (declared via pom.xml:25)
  - org.apache.tomcat:tomcat-coyote (>= 11.0.0-M1, < 11.0.0-M21) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 10.1.0-M1, < 10.1.25) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 9.0.0-M1, < 9.0.90) (declared via pom.xml)
  - org.apache.tomcat:tomcat-coyote (>= 8.5.0, <= 8.5.100) (declared via pom.xml)
  - org.apache.tomcat.embed:tomcat-embed-core (>= 8.5.0, <= 8.5.100) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 10.1.25 or later
  - Upgrade to patched version 11.0.0-M21 or later
  - Upgrade to patched version 9.0.90 or later

### CVE-2024-22262: Spring Framework URL Parsing with Host Validation
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:25

[CVE-2024-22262](https://github.com/advisories/GHSA-2wrp-6fg6-hmc5): Spring Framework URL Parsing with Host Validation

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-web (< 5.3.34) (declared via pom.xml:25)
  - org.springframework:spring-web (>= 6.0.0, < 6.0.19) (declared via pom.xml:25)
  - org.springframework:spring-web (>= 6.1.0, < 6.1.6) (declared via pom.xml:25)

Recommended fix:
  - Upgrade to patched version 5.3.34 or later
  - Upgrade to patched version 6.0.19 or later
  - Upgrade to patched version 6.1.6 or later

## CWE Findings (Code-Level Vulnerabilities)

### CWE-259: Use of Hard-coded Password
- **Category:** Credentials & Secrets
- **Severity:** optional
- **Story Points:** 5
- **Files:** src/main/resources/application.yaml:5

Spring datasource configuration contains a hard-coded database password (`password: oracle`) in `application.yaml` under `spring.datasource`.

### CWE-798: Use of Hard-coded Credentials
- **Category:** Credentials & Secrets
- **Severity:** optional
- **Story Points:** 5
- **Files:** src/main/resources/application.yaml:4, src/main/resources/application.yaml:5

Datasource credentials are hard-coded in configuration (`username: system`, `password: oracle`) in `application.yaml`.
