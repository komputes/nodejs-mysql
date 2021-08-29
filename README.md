# nodejs-mysql
a simple webapp template

## Build the webapp, tagging it as 'benben'
## Configure database root user credentials in compose.yml and index.js then run this to spin up mysql and phpmyadmin containers.
```
cd nodejs-mysql
docker build . -t benben
docker-compose up
```

## Log into phpmyadmin at http://localhost:8080 and in the SQL tab list all databases.
```
show databases;
```

## Access node app at http://localhost:3000 to test its connection to the MySQL database.

## Trigger the creation of a database by going to http://localhost:3000/createdb

## Back in phpmyadmin, in the SQL tab, list all databases. A new benben_db should appear
```
show databases;
```


# NOTE WHEN USING mysql:latest (v8):
## To avoid getting a connection error in the node app, create the non-root user, new_user. you will see in the files what has been attempted and failed.

```
CREATE USER 'new_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Ou666Pfme4205oAM6m6S68688lqy4PQfxlYFlCnmPzyyzaloZ5Zw=';
GRANT USAGE ON *.* TO 'new_user'@'%';
ALTER USER 'new_user'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT ALL PRIVILEGES ON `new_user`.* TO 'new_user'@'%';
FLUSH PRIVILEGES;
```
