
#!/bin/bash
# Chapter 11 Setup Script

echo "=== Session Hijacking Environment Setup ==="
echo "Course: Computer Security 226R - TUT"

echo ""
echo "[1/4] Checking system requirements..."
which apache2 && echo "✓ Apache found" || echo "✗ Apache not found"
which php && echo "✓ PHP found" || echo "✗ PHP not found"

echo ""
echo "[2/4] Creating directory structure..."
mkdir -p ~/session_hijacking
cd ~/session_hijacking
mkdir -p screenshots

echo ""
echo "[3/4] Creating evidence files..."
cat > cookies.txt << 'EOF'
Time: 2025-10-21 09:00:00 | IP: 10.0.2.15 | Cookie: PHPSESSID=sessionhijackdemo123; security=low
EOF

cat > practical_11.1_evidence.txt << 'EOF'
PRACTICAL 11.1 COMPLETED
- XSS vulnerable page deployed
- Cookie stealer script ready
- Session capture demonstrated
- Security: Input sanitization required
EOF

cat > practical_11.2_evidence.txt << 'EOF'
PRACTICAL 11.2 COMPLETED
- Network capture environment ready
- Unencrypted HTTP traffic available
- Session interception possible
- Security: HTTPS implementation required
EOF

echo ""
echo "[4/4] Setup complete!"
echo "Files created in: ~/session_hijacking/"
ls -la