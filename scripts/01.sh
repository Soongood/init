#!/bin/sh

awk -F: '{print $1 OFS $3 OFS $6}' /etc/passwd | column -t
