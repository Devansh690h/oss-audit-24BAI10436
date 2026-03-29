## Devansh Singh Rathore (24BAI10436)
# Software choosen MYSQL


🐧 Linux MySQL Audit Toolkit

📌 Overview



This project contains 5 Bash scripts to audit a Linux system from a DBA perspective using MySQL.

It covers system info, package status, disk usage, logs, and open-source philosophy.



⚙️ Requirements

Linux OS

MySQL Server (8.x recommended)

Bash + basic tools (grep, awk, du, dpkg/rpm)

📂 Scripts

1️⃣ System Identity Report

Displays OS, kernel, uptime, user

Uses variables \& command substitution

2️⃣ FOSS Package Inspector

Checks if MySQL is installed

Shows version info

Uses if-else and case

3️⃣ Disk \& Permission Auditor

Audits MySQL directories

Shows permissions, owner, size

Uses loops, arrays, awk

4️⃣ Log File Analyzer

Parses logs for errors

Counts matches \& shows recent entries

Uses while read, arguments

5️⃣ Manifesto Generator

Takes user input

Creates a personalized text file

Uses read and file redirection

▶️ Usage

chmod +x script\*.sh



./script1.sh

./script2.sh

./script3.sh

./script4.sh \[logfile] \[keyword]

./script5.sh

🧠 Key Concepts

Shell scripting automation

System \& package auditing

File permissions \& disk usage

Log analysis

Open-source principles

📜 Conclusion



MySQL works efficiently with Linux, following strong security and open-source standards.

It remains a reliable and widely used database system.

