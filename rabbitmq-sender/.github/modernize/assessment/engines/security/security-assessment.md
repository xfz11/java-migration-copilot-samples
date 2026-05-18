# Security Assessment Report

**Generated:** 2026-05-18T03:19:25.0000000Z

## Summary

| Metric | Count |
|--------|-------|
| Total Findings | 15 |
| CVE Vulnerabilities | 13 |
| CWE Vulnerabilities | 2 |
| Total Rules Assessed | 59 |
| Rules Passed | 57 |

### By Severity

| Severity | Count |
|----------|-------|
| mandatory | 13 |
| optional | 0 |
| potential | 2 |

## CVE Findings (Dependency Vulnerabilities)

### CVE-2026-42587: Netty: HttpContentDecompressor maxAllocation bypass when Content-Encoding set to br/zstd/snappy leads to decompression bomb DoS
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2026-42587](https://github.com/advisories/GHSA-f6hv-jmp6-3vwv): Netty: HttpContentDecompressor maxAllocation bypass when Content-Encoding set to br/zstd/snappy leads to decompression bomb DoS

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http:4.2.13.Final or later
  - io.netty:netty-codec-http2:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http2:4.2.13.Final or later
  - io.netty:netty-codec-http:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http:4.1.133.Final or later
  - io.netty:netty-codec-http2:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http2:4.1.133.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec-http to 4.2.13.Final or later
  - Upgrade io.netty:netty-codec-http2 to 4.2.13.Final or later
  - Upgrade io.netty:netty-codec-http to 4.1.133.Final or later
  - Upgrade io.netty:netty-codec-http2 to 4.1.133.Final or later

### CVE-2026-42584: Netty has HttpClientCodec response desynchronization
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2026-42584](https://github.com/advisories/GHSA-57rv-r2g8-2cj3): Netty has HttpClientCodec response desynchronization

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http:4.2.13.Final or later
  - io.netty:netty-codec-http:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http:4.1.133.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec-http to 4.2.13.Final or later
  - Upgrade io.netty:netty-codec-http to 4.1.133.Final or later

### CVE-2026-42583: Netty Lz4FrameDecoder is vulnerable to resource exhaustion 
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2026-42583](https://github.com/advisories/GHSA-mj4r-2hfc-f8p6): Netty Lz4FrameDecoder is vulnerable to resource exhaustion 

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec:4.1.133.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec to 4.1.133.Final or later

### CVE-2026-42579: Netty has a DNS Codec Input Validation Bypass (Encoder + Decoder)
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2026-42579](https://github.com/advisories/GHSA-cm33-6792-r9fm): Netty has a DNS Codec Input Validation Bypass (Encoder + Decoder)

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-dns:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-dns:4.2.13.Final or later
  - io.netty:netty-codec-dns:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-dns:4.1.133.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec-dns to 4.2.13.Final or later
  - Upgrade io.netty:netty-codec-dns to 4.1.133.Final or later

### CVE-2026-33871: Netty HTTP/2 CONTINUATION Frame Flood DoS via Zero-Byte Frame Bypass
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2026-33871](https://github.com/advisories/GHSA-w9fj-cfpg-grvv): Netty HTTP/2 CONTINUATION Frame Flood DoS via Zero-Byte Frame Bypass

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http2:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http2:4.1.132.Final or later
  - io.netty:netty-codec-http2:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http2:4.2.11.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec-http2 to 4.1.132.Final or later
  - Upgrade io.netty:netty-codec-http2 to 4.2.11.Final or later

### CVE-2026-33870: Netty: HTTP Request Smuggling via Chunked Extension Quoted-String Parsing
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2026-33870](https://github.com/advisories/GHSA-pwqr-wmgm-9rr8): Netty: HTTP Request Smuggling via Chunked Extension Quoted-String Parsing

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http:4.1.132.Final or later
  - io.netty:netty-codec-http:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http:4.2.10.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec-http to 4.1.132.Final or later
  - Upgrade io.netty:netty-codec-http to 4.2.10.Final or later

### CVE-2025-55163: Netty affected by MadeYouReset HTTP/2 DDoS vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2025-55163](https://github.com/advisories/GHSA-prj3-ccx8-p6x4): Netty affected by MadeYouReset HTTP/2 DDoS vulnerability

Severity: HIGH

Affected dependencies:
  - io.netty:netty-codec-http2:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http2:4.2.4.Final or later
  - io.netty:netty-codec-http2:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-codec-http2:4.1.124.Final or later

Recommended fix:
  - Upgrade io.netty:netty-codec-http2 to 4.2.4.Final or later
  - Upgrade io.netty:netty-codec-http2 to 4.1.124.Final or later

### CVE-2025-24970: SslHandler doesn't correctly validate packets which can lead to native crash when using native SSLEngine
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:37

[CVE-2025-24970](https://github.com/advisories/GHSA-4g8c-wm8x-jfhw): SslHandler doesn't correctly validate packets which can lead to native crash when using native SSLEngine

Severity: HIGH

Affected dependencies:
  - io.netty:netty-handler:4.1.110.Final (transitive, pulled by direct dependency at pom.xml:37)
    Recommended fix: upgrade to io.netty:netty-handler:4.1.118.Final or later

Recommended fix:
  - Upgrade io.netty:netty-handler to 4.1.118.Final or later

### CVE-2026-24400: AssertJ has XML External Entity (XXE) vulnerability when parsing untrusted XML via isXmlEqualTo assertion
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:49

[CVE-2026-24400](https://github.com/advisories/GHSA-rqfh-9r24-8c9r): AssertJ has XML External Entity (XXE) vulnerability when parsing untrusted XML via isXmlEqualTo assertion

Severity: HIGH

Affected dependencies:
  - org.assertj:assertj-core:3.25.3 (transitive, pulled by direct dependency at pom.xml:49)
    Recommended fix: upgrade to org.assertj:assertj-core:3.27.7 or later

Recommended fix:
  - Upgrade org.assertj:assertj-core to 3.27.7 or later

### CVE-2024-57699: Netplex Json-smart Uncontrolled Recursion vulnerability
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:49

[CVE-2024-57699](https://github.com/advisories/GHSA-pq2g-wx69-c263): Netplex Json-smart Uncontrolled Recursion vulnerability

Severity: HIGH

Affected dependencies:
  - net.minidev:json-smart:2.5.1 (transitive, pulled by direct dependency at pom.xml:49)
    Recommended fix: upgrade to net.minidev:json-smart:2.5.2 or later

Recommended fix:
  - Upgrade net.minidev:json-smart to 2.5.2 or later

### CVE-2026-40973: Spring Boot accepts predictable temp directory without ownership verification
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:33

[CVE-2026-40973](https://github.com/advisories/GHSA-wwpq-f5c3-7hvx): Spring Boot accepts predictable temp directory without ownership verification

Severity: HIGH

Affected dependencies:
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
    Recommended fix: upgrade to org.springframework.boot:spring-boot:4.0.6 or later
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
    Recommended fix: upgrade to org.springframework.boot:spring-boot:3.5.14 or later
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)

Recommended fix:
  - Upgrade org.springframework.boot:spring-boot to 4.0.6 or later
  - Upgrade org.springframework.boot:spring-boot to 3.5.14 or later

### CVE-2025-41249: Spring Framework annotation detection mechanism may result in improper authorization
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:33

[CVE-2025-41249](https://github.com/advisories/GHSA-jmp9-x22r-554x): Spring Framework annotation detection mechanism may result in improper authorization

Severity: HIGH

Affected dependencies:
  - org.springframework:spring-core:6.1.8 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework:spring-core:6.1.8 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework:spring-core:6.1.8 (transitive, pulled by direct dependency at pom.xml:33)
    Recommended fix: upgrade to org.springframework:spring-core:6.2.11 or later

Recommended fix:
  - Upgrade org.springframework:spring-core to 6.2.11 or later

### CVE-2025-22235: Spring Boot EndpointRequest.to() creates wrong matcher if actuator endpoint is not exposed
- **Severity:** mandatory
- **Story Points:** 1
- **Files:** pom.xml:33

[CVE-2025-22235](https://github.com/advisories/GHSA-rc42-6c7j-7h5r): Spring Boot EndpointRequest.to() creates wrong matcher if actuator endpoint is not exposed

Severity: HIGH

Affected dependencies:
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
    Recommended fix: upgrade to org.springframework.boot:spring-boot:3.3.11 or later
  - org.springframework.boot:spring-boot:3.3.0 (transitive, pulled by direct dependency at pom.xml:33)
    Recommended fix: upgrade to org.springframework.boot:spring-boot:3.4.5 or later

Recommended fix:
  - Upgrade org.springframework.boot:spring-boot to 3.3.11 or later
  - Upgrade org.springframework.boot:spring-boot to 3.4.5 or later

## CWE Findings (Code-Level Vulnerabilities)

### CWE-772: Missing Release of Resource after Effective Lifetime
- **Category:** Code Quality
- **Severity:** potential
- **Story Points:** 3
- **Files:** src/main/java/com/example/messagingrabbitmq/MessagingRabbitmqApplication.java

In MessagingRabbitmqApplication.main() (line 21), a ConfigurableApplicationContext is obtained via SpringApplication.run() but is never explicitly closed after producer.run() completes (line 23). ConfigurableApplicationContext implements Closeable/AutoCloseable, and best practice requires using try-with-resources or explicitly calling close() after the resource's effective lifetime ends to ensure all managed resources (connections, threads, etc.) are properly released.

### CWE-778: Insufficient Logging
- **Category:** Credentials & Secrets
- **Severity:** potential
- **Story Points:** 3
- **Files:** src/main/java/com/example/messagingrabbitmq/MessagingRabbitmqApplication.java, src/main/java/com/example/messagingrabbitmq/Producer.java

The application lacks a proper logging framework and does not log security-critical events. In MessagingRabbitmqApplication, the queue1() (line 39) and queue2() (line 48) methods silently swallow ResourceNotFoundException without any logging, preventing detection of queue access failures. In Producer.run(), message dispatch to Azure Service Bus is not surrounded by error handling or security event logging. The only output used is System.out.println, with no structured logging for authentication events, send failures, or operational errors.
