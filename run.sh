#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail

sed -i "s/SMTP_HOST/${SMTP_HOST}/g" /etc/postfix/main.cf

sed -i "s/SMTP_HOST/${SMTP_HOST}/g" /etc/postfix/sasl_passwd
sed -i "s/SMTP_USER/${SMTP_USER}/g" /etc/postfix/sasl_passwd
sed -i "s/SMTP_PASSWORD/${SMTP_PASSWORD}/g" /etc/postfix/sasl_passwd

/usr/sbin/postmap /etc/postfix/sasl_passwd

/usr/bin/supervisord
