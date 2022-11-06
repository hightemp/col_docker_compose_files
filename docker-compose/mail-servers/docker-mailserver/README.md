# Docker Mailserver

## Потры

- "25:25"    # SMTP  (explicit TLS => STARTTLS)
- "143:143"  # IMAP4 (explicit TLS => STARTTLS)
- "465:465"  # ESMTP (implicit TLS)
- "587:587"  # ESMTP (explicit TLS => STARTTLS)
- "993:993"  # IMAP4 (implicit TLS)

## Описание

- https://github.com/docker-mailserver/docker-mailserver

A production-ready fullstack but simple mail server (SMTP, IMAP, LDAP, Antispam, Antivirus, etc.). Only configuration files, no SQL database. Keep it simple and versioned. Easy to deploy and upgrade. Documentation via MkDocs.

Originally created by @tomav, docker-mailserver is now maintained by volunteers since January 2021.