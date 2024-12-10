#!/bin/bash

CERTBOT_PATH=$(command -v certbot || echo "/snap/bin/certbot")

if [ ! -x "$CERTBOT_PATH" ]; then
  echo "Certbot is not installed or not in PATH. Please install Certbot and try again."
  exit 1
fi

# Use Certbot
$CERTBOT_PATH certonly --standalone -d "$DOMAIN_NAME"
