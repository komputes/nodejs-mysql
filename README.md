# nodejs-mysql
a simple webapp template

Build the webapp container image, tagging it as 'benben'.
```
git clone https://github.com/komputes/nodejs-mysql.git
cd nodejs-mysql
# Configure database root user credentials in compose.yml and index.js and build image.
docker build . -t benben
# Spin up mysql, phpmyadmin and benben containers.
docker-compose up
```

Log into phpmyadmin at http://localhost:8080 and in the SQL tab list all databases.
```
show databases;
```

Access node app at http://localhost:3000 to test its connection to the MySQL database.

Trigger the creation of a database by going to http://localhost:3000/createdb

Back in phpmyadmin, in the SQL tab, list all databases. A new benben_db should appear
```
show databases;
```


# NOTE WHEN USING mysql:latest (v8):
To avoid getting a connection error in the node app, create the non-root user, new_user. 


```
CREATE USER 'new_user'@'%' IDENTIFIED WITH mysql_native_password BY 'Ou666Pfme4205oAM6m6S68688lqy4PQfxlYFlCnmPzyyzaloZ5Zw=';
GRANT USAGE ON *.* TO 'new_user'@'%';
ALTER USER 'new_user'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
GRANT ALL PRIVILEGES ON `new_user`.* TO 'new_user'@'%';
FLUSH PRIVILEGES;
```
# Help:
Having issues setting up mysql:latest with docker-compose. You will see in the files what has been attempted.
Feel free to send me a pull requests for a patch if you are able to figure it out. 
