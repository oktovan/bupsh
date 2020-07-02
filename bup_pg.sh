sudo su postgres
pg_dump -U pg $1 > /tmp/backup.sql

