## WARNING: If not careful you could configure an open relay with this.  Limit what can speak to port 25 of this container.

### Notes:
- `/var/log` is exported as a VOLUME so you can view the postfix logs
- uses `SMTP_USER`, `SMTP_PASSWORD` and `SMTP_HOST` as environment variables
- see `Makefile`
- 
- https://www.linode.com/docs/email/postfix/postfix-smtp-debian7
