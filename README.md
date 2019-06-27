# Docker Squid

Squid is a caching proxy for the Web supporting HTTP, HTTPS, FTP, and more. It reduces bandwidth and improves response
times by caching and reusing frequently-requested web pages.
Squid has extensive access controls and makes a great server accelerator.

## Getting started

### Quickstart

```bash
docker-compose up -d
```

### Add a user

```bash
docker-compose exec squid htpasswd -b -c /etc/squid/users "LOGIN" "PASSWORD"
```

### Read logs

```bash
docker-compose exec squid tail -n 50 -f /var/log/squid/access.log
```
