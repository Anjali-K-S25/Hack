nmap-bash-scanner/ ├── README.md ├── scan.sh ├── results/ │   └── [targetname]_scan.txt └── LICENSE

scan.sh

#!/bin/bash

echo "Welcome to Simple Nmap Bash Scanner" read -p "Enter the target IP or domain: " target

filename="results/${target}_scan.txt" mkdir -p results

echo "Scanning host: $target" echo "Results will be saved in $filename"

Ping Scan

echo "Running Ping Scan..." | tee -a $filename nmap -sn $target | tee -a $filename

Port Scan

echo -e "\nRunning Port Scan..." | tee -a $filename nmap -p- $target | tee -a $filename

OS Detection

echo -e "\nRunning OS Detection and Service Version Scan..." | tee -a $filename nmap -A $target | tee -a $filename

echo -e "\nScan completed. Check the file: $filename"

README.md

Automated Network Reconnaissance using Nmap and Bash

Overview

This project automates network scanning using Nmap and Bash scripting. It provides a beginner-friendly tool to perform basic reconnaissance tasks like ping scanning, port scanning, and OS detection. The scan results are saved in organized text files for further analysis.

Objectives

Understand basic Nmap usage for network scanning.

Learn to write Bash scripts for automation.

Develop a simple tool that accepts a target IP or domain, performs scans, and saves output.


Prerequisites

Linux environment with Nmap installed.

Basic knowledge of Bash scripting.

Internet connection to test external IPs/domains.


Installation

1. Clone the repository:

git clone https://github.com/username/nmap-bash-scanner.git
cd nmap-bash-scanner


2. Make the script executable:

chmod +x scan.sh



Usage

1. Run the script:

./scan.sh


2. Enter the target IP or domain when prompted.


3. The scan results will be saved in the results/ directory as [targetname]_scan.txt.



Example Output

Scanning 192.168.1.1 will create a file results/192.168.1.1_scan.txt with the scan results.


Future Enhancements

Implement HTML report generation.

Add email notifications for completed scans.

Include additional Nmap options for advanced scanning.


LICENSE

MIT License

Copyright (c) 2025 Anjali

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

