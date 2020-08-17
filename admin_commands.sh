#!/bin/sh

date
uptime | awk '{print $8}'
df -h | grep "user"