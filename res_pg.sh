sudo su postgres
createdb -U pg $1  
psql -U pg $1 < /tmp/backup.sql
exit
