BACKUP_DIR=~/bup
#ODOO_DATABASE=okem
#ADMIN_PASSWORD=Raidhan01

# create a backup directory
#mkdir -p ${BACKUP_DIR}

# create a backup
odoobup

# delete old backups
find ${BACKUP_DIR} -type f -mtime +7 -name "*.zip" -delete

