docker exec reman_db_1 bash /app/bup_pg.sh $1
docker cp reman_db_1:/tmp/backup.sql .
docker cp reman_web_1:/opt/odoo/data/filestore/$1 ~/bup/fs_$1
docker exec reman_db_1 rm /tmp/backup.sql
zip -r ~/bup/$1_$(date +%F).zip backup.sql ~/bup/fs_$1
rm backup.sql
rm -rf ~/bup/fs_$1
