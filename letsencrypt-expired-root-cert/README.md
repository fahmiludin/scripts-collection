# cURL Error 60 

## The Cause
Let's Encrypt Root Cerficate expired on 30 September 2020

## Impacted version
cURL not using using openssl-1.1.1 version

## The Fix (For Ubuntu)

### Install the new root certificate for Let's Encrypt
```shell
sudo mkdir /usr/local/share/ca-certificates/extra
sudo cp root.cert.pem /usr/local/share/ca-certificates/extra/root.cert.crt
```

### Remove the expired Let's Encrypt root certificate
```shell
sed '/DST_Root_CA_X3.crt/d' /etc/ca-certificates.conf > /tmp/cacerts.conf && mv /tmp/cacerts.conf /etc/ca-certificates.conf
```

### Reconfigure Ubuntu system certificates
```shell
sudo dpkg-reconfigure ca-certificates
```

## Automating the fix

### Run the fix script
```shell
./letsencrypt-rootcert-fix.sh
```

## Reference
[GTodorov on Stackoverflow](https://stackoverflow.com/a/69411107)

