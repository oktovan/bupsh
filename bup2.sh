#docker exec -it okem_db1_1 /bin/bash
#sudo su postgres
#pg_dump -U pg okem > /tmp/backup.sql
#exit
DB=$1
echo "backup db" ${DB}
docker exec okem_db1_1 bash /app/bup_pg.sh
docker cp okem_db1_1:/tmp/backup.sql .
docker cp okem_web1_1:/opt/odoo/data/filestore/${DB} ~/fs_${DB}
docker exec okem_db1_1 rm /tmp/backup.sql
zip -r ~/bup/${DB}_$(date +%F).zip backup.sql fs_${DB}
rm backup.sql
rm -rf ~/fs_${DB}
