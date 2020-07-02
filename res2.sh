unzip $1
docker cp ~/bup/backup.sql okem_db1_1:/tmp/
docker exec okem_db1_1 bash /app/res_pg.sh $2
docker exec okem_db1_1 rm /tmp/backup.sql
rm ~/bup/backup.sql
