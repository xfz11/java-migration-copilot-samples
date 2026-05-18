# Security Assessment Report

**Generated:** 2026-05-18T03:12:20.0000000Z

## Summary

| Metric | Count |
|--------|-------|
| Total Findings | 50 |
| CVE Vulnerabilities | 42 |
| CWE Vulnerabilities | 8 |
| Total Rules Assessed | 59 |
| Rules Passed | 51 |

### By Severity

| Severity | Count |
|----------|-------|
| mandatory | 43 |
| optional | 5 |
| potential | 2 |

## CVE Findings (Dependency Vulnerabilities)

### CVE-2016-1000027: Pivotal Spring Framework contains unsafe Java deserialization methods
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2016-1000027](https://github.com/advisories/GHSA-4wrc-f8pq-fpqp): Pivotal Spring Framework contains unsafe Java deserialization methods

Severity: CRITICAL

Affected dependencies:
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: < 6.0.0; first patched: 6.0.0)


### CVE-2022-1471: SnakeYaml Constructor Deserialization Remote Code Execution
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2022-1471](https://github.com/advisories/GHSA-mjmj-j48q-9wg2): SnakeYaml Constructor Deserialization Remote Code Execution

Severity: HIGH

Affected dependencies:
  - org.yaml:snakeyaml:1.30 (declared at pom.xml; vulnerable range: <= 1.33; first patched: 2.0)


### CVE-2022-25857: Uncontrolled Resource Consumption in snakeyaml
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2022-25857](https://github.com/advisories/GHSA-3mc7-4q67-w48m): Uncontrolled Resource Consumption in snakeyaml

Severity: HIGH

Affected dependencies:
  - org.yaml:snakeyaml:1.30 (declared at pom.xml; vulnerable range: < 1.31; first patched: 1.31)


### CVE-2023-6378: logback serialization vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2023-6378](https://github.com/advisories/GHSA-vmq6-5m68-f53m): logback serialization vulnerability

Severity: HIGH

Affected dependencies:
  - ch.qos.logback:logback-classic:1.2.12 (declared at pom.xml; vulnerable range: >= 1.4.0, < 1.4.12; first patched: 1.4.12)
  - ch.qos.logback:logback-core:1.2.12 (declared at pom.xml; vulnerable range: >= 1.4.0, < 1.4.12; first patched: 1.4.12)
  - ch.qos.logback:logback-classic:1.2.12 (declared at pom.xml; vulnerable range: >= 1.3.0, < 1.3.12; first patched: 1.3.12)
  - ch.qos.logback:logback-core:1.2.12 (declared at pom.xml; vulnerable range: >= 1.3.0, < 1.3.12; first patched: 1.3.12)
  - ch.qos.logback:logback-core:1.2.12 (declared at pom.xml; vulnerable range: < 1.2.13; first patched: 1.2.13)
  - ch.qos.logback:logback-classic:1.2.12 (declared at pom.xml; vulnerable range: < 1.2.13; first patched: 1.2.13)


### CVE-2023-6481: Logback is vulnerable to an attacker mounting a Denial-Of-Service attack by sending poisoned data
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2023-6481](https://github.com/advisories/GHSA-gm62-rw4g-vrc4): Logback is vulnerable to an attacker mounting a Denial-Of-Service attack by sending poisoned data

Severity: HIGH

Affected dependencies:
  - ch.qos.logback:logback-core:1.2.12 (declared at pom.xml; vulnerable range: = 1.4.13; first patched: 1.4.14)
  - ch.qos.logback:logback-core:1.2.12 (declared at pom.xml; vulnerable range: = 1.3.13; first patched: 1.3.14)
  - ch.qos.logback:logback-core:1.2.12 (declared at pom.xml; vulnerable range: = 1.2.12; first patched: 1.2.13)


### CVE-2024-1597: org.postgresql:postgresql vulnerable to SQL Injection via line comment generation
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** worker/pom.xml:51

[CVE-2024-1597](https://github.com/advisories/GHSA-24rp-q3w6-vc56): org.postgresql:postgresql vulnerable to SQL Injection via line comment generation

Severity: CRITICAL

Affected dependencies:
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: < 42.2.28; first patched: 42.2.28)
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: >= 42.3.0, < 42.3.9; first patched: 42.3.9)
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: >= 42.4.0, < 42.4.4; first patched: 42.4.4)
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: >= 42.5.0, < 42.5.5; first patched: 42.5.5)
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: >= 42.6.0, < 42.6.1; first patched: 42.6.1)
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: >= 42.7.0, < 42.7.2; first patched: 42.7.2)


### CVE-2024-22243: Spring Web vulnerable to Open Redirect or Server Side Request Forgery
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-22243](https://github.com/advisories/GHSA-ccgv-vj62-xf9h): Spring Web vulnerable to Open Redirect or Server Side Request Forgery

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 6.1.0, < 6.1.4; first patched: 6.1.4)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 6.0.0, < 6.0.17; first patched: 6.0.17)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 5.3.0, < 5.3.32; first patched: 5.3.32)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: <= 5.2.25.RELEASE; first patched: N/A)


### CVE-2024-22259: Spring Framework URL Parsing with Host Validation Vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-22259](https://github.com/advisories/GHSA-hgjh-9rj2-g67j): Spring Framework URL Parsing with Host Validation Vulnerability

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 6.1.0, < 6.1.5; first patched: 6.1.5)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 6.0.0, < 6.0.18; first patched: 6.0.18)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: < 5.3.33; first patched: 5.3.33)


### CVE-2024-22262: Spring Framework URL Parsing with Host Validation
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-22262](https://github.com/advisories/GHSA-2wrp-6fg6-hmc5): Spring Framework URL Parsing with Host Validation

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: < 5.3.34; first patched: 5.3.34)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 6.0.0, < 6.0.19; first patched: 6.0.19)
  - org.springframework:spring-web:5.3.31 (declared at pom.xml; vulnerable range: >= 6.1.0, < 6.1.6; first patched: 6.1.6)


### CVE-2024-34750: Apache Tomcat - Denial of Service
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-34750](https://github.com/advisories/GHSA-wm9w-rjj3-j356): Apache Tomcat - Denial of Service

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.0-M21; first patched: 11.0.0-M21)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.25; first patched: 10.1.25)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0-M1, < 9.0.90; first patched: 9.0.90)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.0, <= 8.5.100; first patched: N/A)


### CVE-2024-38816: Path traversal vulnerability in functional web frameworks
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-38816](https://github.com/advisories/GHSA-cx7f-g6mp-7hqm): Path traversal vulnerability in functional web frameworks

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-webmvc:5.3.31 (declared at pom.xml; vulnerable range: >= 6.1.0, < 6.1.13; first patched: 6.1.13)
  - org.springframework:spring-webmvc:5.3.31 (declared at pom.xml; vulnerable range: >= 6.0.0, <= 6.0.23; first patched: N/A)
  - org.springframework:spring-webmvc:5.3.31 (declared at pom.xml; vulnerable range: >= 5.3.0, <= 5.3.39; first patched: N/A)


### CVE-2024-38819: Spring Framework Path Traversal vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-38819](https://github.com/advisories/GHSA-g5vr-rgqm-vf78): Spring Framework Path Traversal vulnerability

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-webmvc:5.3.31 (declared at pom.xml; vulnerable range: >= 6.1.0, < 6.1.14; first patched: 6.1.14)
  - org.springframework:spring-webmvc:5.3.31 (declared at pom.xml; vulnerable range: <= 5.3.39; first patched: N/A)
  - org.springframework:spring-webmvc:5.3.31 (declared at pom.xml; vulnerable range: >= 6.0.0, <= 6.0.23; first patched: N/A)


### CVE-2024-50379: Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-50379](https://github.com/advisories/GHSA-5j33-cvvr-w245): Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.2; first patched: 11.0.2)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.34; first patched: 10.1.34)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, < 9.0.98; first patched: 9.0.98)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.0, <= 8.5.100; first patched: N/A)


### CVE-2024-56337: Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2024-56337](https://github.com/advisories/GHSA-27hp-xhwr-wr2m): Apache Tomcat Time-of-check Time-of-use (TOCTOU) Race Condition vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.2; first patched: 11.0.2)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.34; first patched: 10.1.34)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, < 9.0.98; first patched: 9.0.98)


### CVE-2025-22235: Spring Boot EndpointRequest.to() creates wrong matcher if actuator endpoint is not exposed
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-22235](https://github.com/advisories/GHSA-rc42-6c7j-7h5r): Spring Boot EndpointRequest.to() creates wrong matcher if actuator endpoint is not exposed

Severity: HIGH

Affected dependencies:
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: <= 2.7.24.2; first patched: N/A)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.1.0, <= 3.1.15.2; first patched: N/A)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.2.0, <= 3.2.13.2; first patched: N/A)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.3.0, <= 3.3.10; first patched: 3.3.11)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.4.0, <= 3.4.4; first patched: 3.4.5)


### CVE-2025-24813: Apache Tomcat: Potential RCE and/or information disclosure and/or information corruption with partial PUT
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-24813](https://github.com/advisories/GHSA-83qj-6fr2-vhqg): Apache Tomcat: Potential RCE and/or information disclosure and/or information corruption with partial PUT

Severity: CRITICAL

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.3; first patched: 11.0.3)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.35; first patched: 10.1.35)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, < 9.0.99; first patched: 9.0.99)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.0, <= 8.5.100; first patched: N/A)


### CVE-2025-24970: SslHandler doesn't correctly validate packets which can lead to native crash when using native SSLEngine
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-24970](https://github.com/advisories/GHSA-4g8c-wm8x-jfhw): SslHandler doesn't correctly validate packets which can lead to native crash when using native SSLEngine

Severity: HIGH

Affected dependencies:
  - io.netty:netty-handler:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.1.91.Final, <= 4.1.117.Final; first patched: 4.1.118.Final)


### CVE-2025-41249: Spring Framework annotation detection mechanism may result in improper authorization
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-41249](https://github.com/advisories/GHSA-jmp9-x22r-554x): Spring Framework annotation detection mechanism may result in improper authorization

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-core:5.3.31 (declared at pom.xml; vulnerable range: >= 5.3.0, <= 5.3.44; first patched: N/A)
  - org.springframework:spring-core:5.3.31 (declared at pom.xml; vulnerable range: >= 6.0.0, <= 6.1.22; first patched: N/A)
  - org.springframework:spring-core:5.3.31 (declared at pom.xml; vulnerable range: >= 6.2.0, <= 6.2.10; first patched: 6.2.11)


### CVE-2025-48988: Apache Tomcat - DoS in multipart upload
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-48988](https://github.com/advisories/GHSA-h3gc-qfqq-6h8f): Apache Tomcat - DoS in multipart upload

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, <= 11.0.7; first patched: 11.0.8)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, <= 10.1.41; first patched: 10.1.42)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, <= 9.0.105; first patched: 9.0.106)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.0, <= 8.5.100; first patched: N/A)


### CVE-2025-48989: Apache Tomcat Improper Resource Shutdown or Release vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-48989](https://github.com/advisories/GHSA-gqp3-2cvr-x8m3): Apache Tomcat Improper Resource Shutdown or Release vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.10; first patched: 11.0.10)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.44; first patched: 10.1.44)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, < 9.0.108; first patched: 9.0.108)


### CVE-2025-52520: Apache Tomcat Catalina is vulnerable to DoS attack through bypassing of size limits
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-52520](https://github.com/advisories/GHSA-wr62-c79q-cv37): Apache Tomcat Catalina is vulnerable to DoS attack through bypassing of size limits

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.9; first patched: 11.0.9)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.43; first patched: 10.1.43)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, < 9.0.107; first patched: 9.0.107)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.0, <= 8.5.100; first patched: N/A)


### CVE-2025-52999: jackson-core can throw a StackoverflowError when processing deeply nested data
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-52999](https://github.com/advisories/GHSA-h46c-h94j-95f3): jackson-core can throw a StackoverflowError when processing deeply nested data

Severity: HIGH

Affected dependencies:
  - com.fasterxml.jackson.core:jackson-core:2.13.5 (declared at pom.xml; vulnerable range: < 2.15.0; first patched: 2.15.0)


### CVE-2025-53506: Apache Tomcat Coyote vulnerable to Denial of Service via excessive HTTP/2 streams
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-53506](https://github.com/advisories/GHSA-25xr-qj8w-c4vf): Apache Tomcat Coyote vulnerable to Denial of Service via excessive HTTP/2 streams

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.0, <= 8.5.100; first patched: N/A)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0.M1, < 9.0.107; first patched: 9.0.107)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.43; first patched: 10.1.43)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.9; first patched: 11.0.9)


### CVE-2025-55163: Netty affected by MadeYouReset HTTP/2 DDoS vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-55163](https://github.com/advisories/GHSA-prj3-ccx8-p6x4): Netty affected by MadeYouReset HTTP/2 DDoS vulnerability

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http2:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.2.0.Alpha1, <= 4.2.3.Final; first patched: 4.2.4.Final)
  - io.netty:netty-codec-http2:4.1.101.Final (declared at pom.xml; vulnerable range: <= 4.1.123.Final; first patched: 4.1.124.Final)


### CVE-2025-55752: Apache Tomcat Vulnerable to Relative Path Traversal
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2025-55752](https://github.com/advisories/GHSA-wmwf-9ccg-fff5): Apache Tomcat Vulnerable to Relative Path Traversal

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.11; first patched: 11.0.11)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.45; first patched: 10.1.45)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.0-M11, < 9.0.109; first patched: 9.0.109)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 8.5.6, <= 8.5.100; first patched: N/A)


### CVE-2026-0603: Hibernate vulnerable to SQL Injection
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-0603](https://github.com/advisories/GHSA-2p5w-cvg5-gc5c): Hibernate vulnerable to SQL Injection

Severity: HIGH

Affected dependencies:
  - org.hibernate:hibernate-core:5.6.15.Final (declared at pom.xml; vulnerable range: >= 5.2.8, <= 5.6.15; first patched: N/A)


### CVE-2026-24400: AssertJ has XML External Entity (XXE) vulnerability when parsing untrusted XML via isXmlEqualTo assertion
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-24400](https://github.com/advisories/GHSA-rqfh-9r24-8c9r): AssertJ has XML External Entity (XXE) vulnerability when parsing untrusted XML via isXmlEqualTo assertion

Severity: HIGH

Affected dependencies:
  - org.assertj:assertj-core:3.22.0 (declared at pom.xml; vulnerable range: >= 1.4.0, <= 3.27.6; first patched: 3.27.7)


### CVE-2026-24734: Apache Tomcat has an Improper Input Validation vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-24734](https://github.com/advisories/GHSA-mgp5-rv84-w37q): Apache Tomcat has an Improper Input Validation vulnerability

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.18; first patched: 11.0.18)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M7, < 10.1.52; first patched: 10.1.52)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.83, < 9.0.115; first patched: 9.0.115)


### CVE-2026-29145: Apache Tomcat: CLIENT_CERT authentication does not fail as expected
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-29145](https://github.com/advisories/GHSA-95jq-rwvf-vjx4): Apache Tomcat: CLIENT_CERT authentication does not fail as expected

Severity: CRITICAL

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.83, < 9.0.116; first patched: 9.0.116)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M7, < 10.1.53; first patched: 10.1.53)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.20; first patched: 11.0.20)


### CVE-2026-33870: Netty: HTTP Request Smuggling via Chunked Extension Quoted-String Parsing
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-33870](https://github.com/advisories/GHSA-pwqr-wmgm-9rr8): Netty: HTTP Request Smuggling via Chunked Extension Quoted-String Parsing

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http:4.1.101.Final (declared at pom.xml; vulnerable range: < 4.1.132.Final; first patched: 4.1.132.Final)
  - io.netty:netty-codec-http:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.2.0.Alpha1, < 4.2.10.Final; first patched: 4.2.10.Final)


### CVE-2026-33871: Netty HTTP/2 CONTINUATION Frame Flood DoS via Zero-Byte Frame Bypass
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-33871](https://github.com/advisories/GHSA-w9fj-cfpg-grvv): Netty HTTP/2 CONTINUATION Frame Flood DoS via Zero-Byte Frame Bypass

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http2:4.1.101.Final (declared at pom.xml; vulnerable range: < 4.1.132.Final; first patched: 4.1.132.Final)
  - io.netty:netty-codec-http2:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.2.0.Alpha1, < 4.2.10.Final; first patched: 4.2.11.Final)


### CVE-2026-34483: Apache Tomcat has an Improper Encoding or Escaping of Output vulnerability in the JsonAccessLogValve
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-34483](https://github.com/advisories/GHSA-rv64-5gf8-9qq8): Apache Tomcat has an Improper Encoding or Escaping of Output vulnerability in the JsonAccessLogValve

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.40, < 9.0.116; first patched: 9.0.116)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.54; first patched: 10.1.54)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.21; first patched: 11.0.21)


### CVE-2026-34487: Apache Tomcat vulnerable to Insertion of Sensitive Information into Log File
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-34487](https://github.com/advisories/GHSA-x4m4-345f-5h5g): Apache Tomcat vulnerable to Insertion of Sensitive Information into Log File

Severity: HIGH

Affected dependencies:
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 9.0.13, < 9.0.117; first patched: 9.0.117)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 10.1.0-M1, < 10.1.54; first patched: 10.1.54)
  - org.apache.tomcat.embed:tomcat-embed-core:9.0.83 (declared at pom.xml; vulnerable range: >= 11.0.0-M1, < 11.0.21; first patched: 11.0.21)


### CVE-2026-40477: Improper restriction of the scope of accessible objects in Thymeleaf expressions
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-40477](https://github.com/advisories/GHSA-r4v4-5mwr-2fwr): Improper restriction of the scope of accessible objects in Thymeleaf expressions

Severity: CRITICAL

Affected dependencies:
  - org.thymeleaf:thymeleaf:3.0.15.RELEASE (declared at pom.xml; vulnerable range: <= 3.1.3.RELEASE; first patched: 3.1.4.RELEASE)
  - org.thymeleaf:thymeleaf-spring5:3.0.15.RELEASE (declared at pom.xml; vulnerable range: <= 3.1.3.RELEASE; first patched: 3.1.4.RELEASE)


### CVE-2026-40478: Improper neutralization of specific syntax patterns for unauthorized expressions in Thymeleaf
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-40478](https://github.com/advisories/GHSA-xjw8-8c5c-9r79): Improper neutralization of specific syntax patterns for unauthorized expressions in Thymeleaf

Severity: CRITICAL

Affected dependencies:
  - org.thymeleaf:thymeleaf:3.0.15.RELEASE (declared at pom.xml; vulnerable range: <= 3.1.3.RELEASE; first patched: 3.1.4.RELEASE)
  - org.thymeleaf:thymeleaf-spring5:3.0.15.RELEASE (declared at pom.xml; vulnerable range: <= 3.1.3.RELEASE; first patched: 3.1.4.RELEASE)


### CVE-2026-40972: Spring Boot DevTools remote secret comparison is vulnerable to timing attacks
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** web/pom.xml:37

[CVE-2026-40972](https://github.com/advisories/GHSA-56v8-86gj-66jp): Spring Boot DevTools remote secret comparison is vulnerable to timing attacks

Severity: HIGH

Affected dependencies:
  - org.springframework.boot:spring-boot-devtools:2.7.18 (declared at web/pom.xml:37; vulnerable range: >= 4.0.0, < 4.0.6; first patched: 4.0.6)
  - org.springframework.boot:spring-boot-devtools:2.7.18 (declared at web/pom.xml:37; vulnerable range: >= 3.5.0, < 3.5.14; first patched: 3.5.14)
  - org.springframework.boot:spring-boot-devtools:2.7.18 (declared at web/pom.xml:37; vulnerable range: >= 3.4.0, <= 3.4.15; first patched: N/A)
  - org.springframework.boot:spring-boot-devtools:2.7.18 (declared at web/pom.xml:37; vulnerable range: >= 3.3.0, <= 3.3.18; first patched: N/A)
  - org.springframework.boot:spring-boot-devtools:2.7.18 (declared at web/pom.xml:37; vulnerable range: <= 2.7.32; first patched: N/A)


### CVE-2026-40973: Spring Boot accepts predictable temp directory without ownership verification
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-40973](https://github.com/advisories/GHSA-wwpq-f5c3-7hvx): Spring Boot accepts predictable temp directory without ownership verification

Severity: HIGH

Affected dependencies:
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 4.0.0, < 4.0.6; first patched: 4.0.6)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.5.0, < 3.5.14; first patched: 3.5.14)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.4.0, <= 3.4.15; first patched: N/A)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: >= 3.3.0, <= 3.3.18; first patched: N/A)
  - org.springframework.boot:spring-boot:2.7.18 (declared at pom.xml; vulnerable range: <= 2.7.32; first patched: N/A)


### CVE-2026-41901: Sandboxed Thymeleaf expressions vulnerable to improper recognition of unauthorized syntax patterns
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-41901](https://github.com/advisories/GHSA-c9ph-gxww-7744): Sandboxed Thymeleaf expressions vulnerable to improper recognition of unauthorized syntax patterns

Severity: CRITICAL

Affected dependencies:
  - org.thymeleaf:thymeleaf:3.0.15.RELEASE (declared at pom.xml; vulnerable range: <= 3.1.4.RELEASE; first patched: 3.1.5.RELEASE)
  - org.thymeleaf:thymeleaf-spring5:3.0.15.RELEASE (declared at pom.xml; vulnerable range: <= 3.1.4.RELEASE; first patched: 3.1.5.RELEASE)


### CVE-2026-42198: pgjdbc: Unbounded PBKDF2 iterations in SCRAM authentication allows CPU exhaustion DoS
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** worker/pom.xml:51

[CVE-2026-42198](https://github.com/advisories/GHSA-98qh-xjc8-98pq): pgjdbc: Unbounded PBKDF2 iterations in SCRAM authentication allows CPU exhaustion DoS

Severity: HIGH

Affected dependencies:
  - org.postgresql:postgresql:42.3.8 (declared at worker/pom.xml:51; vulnerable range: >= 42.2.0, < 42.7.11; first patched: 42.7.11)


### CVE-2026-42583: Netty Lz4FrameDecoder is vulnerable to resource exhaustion 
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-42583](https://github.com/advisories/GHSA-mj4r-2hfc-f8p6): Netty Lz4FrameDecoder is vulnerable to resource exhaustion 

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec:4.1.101.Final (declared at pom.xml; vulnerable range: <= 4.1.132.Final; first patched: 4.1.133.Final)


### CVE-2026-42584: Netty has HttpClientCodec response desynchronization
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-42584](https://github.com/advisories/GHSA-57rv-r2g8-2cj3): Netty has HttpClientCodec response desynchronization

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.2.0.Alpha1, <= 4.2.12.Final; first patched: 4.2.13.Final)
  - io.netty:netty-codec-http:4.1.101.Final (declared at pom.xml; vulnerable range: <= 4.1.132.Final; first patched: 4.1.133.Final)


### CVE-2026-42587: Netty: HttpContentDecompressor maxAllocation bypass when Content-Encoding set to br/zstd/snappy leads to decompression bomb DoS
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml

[CVE-2026-42587](https://github.com/advisories/GHSA-f6hv-jmp6-3vwv): Netty: HttpContentDecompressor maxAllocation bypass when Content-Encoding set to br/zstd/snappy leads to decompression bomb DoS

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.2.0.Alpha1, <= 4.2.12.Final; first patched: 4.2.13.Final)
  - io.netty:netty-codec-http2:4.1.101.Final (declared at pom.xml; vulnerable range: >= 4.2.0.Alpha1, <= 4.2.12.Final; first patched: 4.2.13.Final)
  - io.netty:netty-codec-http:4.1.101.Final (declared at pom.xml; vulnerable range: <= 4.1.132.Final; first patched: 4.1.133.Final)
  - io.netty:netty-codec-http2:4.1.101.Final (declared at pom.xml; vulnerable range: <= 4.1.132.Final; first patched: 4.1.133.Final)


## CWE Findings (Code-Level Vulnerabilities)

### CWE-259: Use of Hard-coded Password
- **Category:** Credentials & Secrets
- **Severity:** optional
- **Story Points:** 5
- **Files:** web/src/main/resources/application.properties, worker/src/main/resources/application.properties

Database and broker passwords are configured as static literals (`spring.datasource.password=postgres`, `spring.rabbitmq.password=guest`) in both web and worker application.properties files.

### CWE-321: Use of Hard-coded Cryptographic Key
- **Category:** Credentials & Secrets
- **Severity:** potential
- **Story Points:** 5
- **Files:** web/src/main/resources/application.properties, worker/src/main/resources/application.properties

AWS secret key values are embedded directly in configuration files (`aws.secretKey=your-secret-key`) instead of external secret management.

### CWE-798: Use of Hard-coded Credentials
- **Category:** Credentials & Secrets
- **Severity:** optional
- **Story Points:** 5
- **Files:** web/src/main/resources/application.properties, worker/src/main/resources/application.properties

Multiple credentials are hard-coded in plain text (AWS access key placeholders, RabbitMQ username/password, PostgreSQL username/password).

### CWE-22: Improper Limitation of a Pathname to a Restricted Directory ('Path Traversal')
- **Category:** File & Path Security
- **Severity:** optional
- **Story Points:** 8
- **Files:** worker/src/main/java/com/microsoft/migration/assets/worker/service/LocalFileProcessingService.java, web/src/main/java/com/microsoft/migration/assets/service/LocalFileStorageService.java

External key input is directly resolved into filesystem paths via rootLocation.resolve(key) in LocalFileProcessingService.downloadOriginal (line 38) and LocalFileStorageService.getObject/deleteObject (lines 110 and 120) without canonical path boundary checks against rootLocation.

### CWE-23: Relative Path Traversal
- **Category:** File & Path Security
- **Severity:** optional
- **Story Points:** 5
- **Files:** worker/src/main/java/com/microsoft/migration/assets/worker/service/LocalFileProcessingService.java, web/src/main/java/com/microsoft/migration/assets/service/LocalFileStorageService.java

Relative traversal sequences in the key parameter can reach file operations because key values are used directly in rootLocation.resolve(key) for reads/deletes. The key path variable originates from controller endpoints (/view/{key}, /delete/{key}) and is not normalized/validated before those operations.

### CWE-36: Absolute Path Traversal
- **Category:** File & Path Security
- **Severity:** optional
- **Story Points:** 5
- **Files:** web/src/main/java/com/microsoft/migration/assets/service/LocalFileStorageService.java, worker/src/main/java/com/microsoft/migration/assets/worker/service/LocalFileProcessingService.java

Absolute path key values can bypass the intended storage root because Path.resolve returns the absolute input path as-is. File operations in LocalFileStorageService.getObject/deleteObject and LocalFileProcessingService.downloadOriginal then operate on that resolved path without enforcing rootLocation prefix checks.

### CWE-434: Unrestricted Upload of File with Dangerous Type
- **Category:** File & Path Security
- **Severity:** mandatory
- **Story Points:** 8
- **Files:** web/src/main/java/com/microsoft/migration/assets/controller/S3Controller.java, web/src/main/java/com/microsoft/migration/assets/service/LocalFileStorageService.java, worker/src/main/java/com/microsoft/migration/assets/worker/service/AbstractFileProcessingService.java

The upload endpoint accepts arbitrary MultipartFile input and stores it without extension or MIME allowlisting (S3Controller.uploadObject -> LocalFileStorageService.uploadObject). Uploaded files are then automatically processed by image worker logic (AbstractFileProcessingService.processImage/generateThumbnail).

### CWE-99: Improper Control of Resource Identifiers ('Resource Injection')
- **Category:** Injection Attacks
- **Severity:** potential
- **Story Points:** 3
- **Files:** web/src/main/java/com/microsoft/migration/assets/controller/S3Controller.java, web/src/main/java/com/microsoft/migration/assets/service/LocalFileStorageService.java, web/src/main/java/com/microsoft/migration/assets/service/AwsS3Service.java

Resource identifiers from user-controlled path variables (key) are directly passed to storage operations (view/delete) and backend services without restrictive validation. This allows selection of arbitrary object keys/resources in LocalFileStorageService.getObject/deleteObject and AwsS3Service.getObject/deleteObject call paths.

