<!DOCTYPE html>
<html>
<head>
    <title>XSS Vulnerable Test Page</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        .warning { background: #fff3cd; border: 1px solid #ffeaa7; padding: 15px; margin: 20px 0; }
        .demo { background: #d4edda; border: 1px solid #c3e6cb; padding: 15px; margin: 20px 0; }
    </style>
</head>
<body>
    <h1>XSS Vulnerability Demonstration</h1>
    
    <div class="warning">
        <strong>SECURITY WARNING:</strong> This page is intentionally vulnerable for educational purposes only.
        Do not deploy in production environments.
    </div>
    
    <div class="demo">
        <h3>Test Form (Vulnerable to XSS)</h3>
        <form method="GET">
            <input type="text" name="input" placeholder="Enter text here..." style="width: 300px; padding: 8px;">
            <input type="submit" value="Submit">
        </form>
        
        <?php
        if(isset($_GET['input'])) {
            echo "<h4>Output (Unsanitized):</h4>";
            echo "<div style='background:#f8d7da; padding:10px;'>";
            echo htmlspecialchars($_GET['input']);
            echo "</div>";
            
            echo "<h4>Raw Output (Vulnerable):</h4>";
            echo "<div style='background:#cce5ff; padding:10px;'>";
            echo $_GET['input']; // This line is vulnerable
            echo "</div>";
        }
        ?>
    </div>
    
    <div style="margin-top: 30px;">
        <h3>Educational Purpose</h3>
        <p>This page demonstrates:</p>
        <ul>
            <li>Reflected XSS vulnerability</li>
            <li>Importance of input sanitization</li>
            <li>Session hijacking risks</li>
        </ul>
        <p><strong>Course:</strong> Computer Security 226R - TUT</p>
    </div>
</body>
</html>