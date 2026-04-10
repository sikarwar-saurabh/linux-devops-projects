#!/bin/bash

# File where report will be stored
OUTPUT_FILE="report.txt"

echo "===================================" > $OUTPUT_FILE
echo "   System Health Monitoring Report  " >> $OUTPUT_FILE
echo "===================================" >> $OUTPUT_FILE
echo "Generated on: $(date)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# CPU Usage
echo ">>> CPU Usage:" >> $OUTPUT_FILE
top -bn1 | grep "Cpu(s)" >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Memory Usage
echo ">>> Memory Usage:" >> $OUTPUT_FILE
free -h >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

# Disk Usage
echo ">>> Disk Usage:" >> $OUTPUT_FILE
df -h >> $OUTPUT_FILE
echo "" >> $OUTPUT_FILE

echo "Report generated successfully and saved to $OUTPUT_FILE"
