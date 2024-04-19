#!/bin/bash

echo 'Starting test enviroment configuration script...'

if [ ! -f '/etc/debian_version' ]; then
   echo 'Warning: running this script not on a Debian-based distro may lead to errors!'
fi

if [ -f './containers/cert-manager/certs/ca.crt' ]; then
    trust anchor ./containers/cert-manager/certs/ca.crt
    echo 'Self-signed CA-certificate added into the trust store.'
else
    echo 'Error: seems like CA-certificate is not yet generated.'
    exit 1
fi

echo 'Assuming the infrastructure runs on localhost and domain name is "flask.xsoft.test".'
echo '127.0.0.1   flask.xsoft.test' >> /etc/hosts

exit 0