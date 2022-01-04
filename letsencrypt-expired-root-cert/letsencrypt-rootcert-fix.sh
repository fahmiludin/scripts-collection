#!/usr/bin/env bash

# Install new root certificate for Lets Encrypt
sudo mkdir /usr/local/share/ca-certificates/extra
sudo cp letsencrypt.root.cert.pem /usr/local/share/ca-certificates/extra/root.cert.crt

# Remove expired Lets Encrypt root certificate
sed '/DST_Root_CA_X3.crt/d' /etc/ca-certificates.conf > /tmp/cacerts.conf && mv /tmp/cacerts.conf /etc/ca-certificates.conf

# Configure new root certificate
sudo dpkg-reconfigure ca-certificates