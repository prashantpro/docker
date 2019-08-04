#!/bin/sh

# Backup
#docker exec CONTAINER /usr/bin/mysqldump -u root --password=root DATABASE > backup.sql

# Restore
#cat backup.sql | docker exec -i CONTAINER /usr/bin/mysql -u root --password=root DATABASE


cat backup_nokos.sql | docker exec -i mysqldock /usr/bin/mysql -u root --password=secret nokos
cat backup_jbpm.sql  | docker exec -i mysqldock /usr/bin/mysql -u root --password=secret jbpm
cat backup_omsdb.sql | docker exec -i mysqldock /usr/bin/mysql -u root --password=secret omsdb
cat backup_sapphire_sso.sql | docker exec -i mysqldock /usr/bin/mysql -u root --password=secret sapphire_sso