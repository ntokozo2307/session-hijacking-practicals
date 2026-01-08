# Chapter 11 - Session Hijacking Practicals

## Overview
This project demonstrates session hijacking techniques including XSS-based cookie theft and network sidejacking, implemented for a Computer Security course assignment.

## Practicals

### 11.1 - Stealing Cookies via Reflected XSS
**Objective**: Capture session cookies using Cross-Site Scripting
**Tools**: Apache2, PHP, curl
**Files**:
- `steal.php` - Cookie capture script
- `xss_test.php` - Vulnerable test page
- `cookies.txt` - Captured session evidence

### 11.2 - Sidejacking with Wireshark
**Objective**: Intercept unencrypted session cookies from network traffic
**Tools**: Wireshark, tcpdump, Apache2

## File Structure