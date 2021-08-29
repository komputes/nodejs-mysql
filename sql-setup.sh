# Had to set mysql:5.7.35 because mysql:latest requires non-rool user, could not get this working with docker-compose.

#!/bin/bash
mysql -u root -pOu666Pfme4205oAM6m6S68688lqy4PQfxlYFlCnmPzyyzaloZ5Zw= -e "CREATE USER 'new_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Ou666Pfme4205oAM6m6S68688lqy4PQfxlYFlCnmPzyyzaloZ5Zw=';GRANT USAGE ON *.* TO 'new_user'@'%';ALTER USER 'new_user'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;GRANT ALL PRIVILEGES ON new_user.* TO 'new_user'@'%';FLUSH PRIVILEGES;"