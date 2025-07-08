#!/bin/bash
echo "Uptime at $(date)" >> uptime-log.txt
uptime >> uptime-log.txt
echo "---" >> uptime-log.txt
